#!/usr/bin/env bash

set -euo pipefail

if [[ $# -ne 1 ]]; then
    echo "[ERROR] Invalid arguments" >&2
    echo "Usage: $0 RELEASE_VERSION_NUMBER" >&2
    exit 1
fi

release_version="$1"
new_version_filename="${release_version}.tar.gz"
if ! curl -sL -I "https://github.com/pwalch/lonesnake/archive/refs/tags/${new_version_filename}"; then
    echo "[ERROR] Could not download lonesnake archive version ${new_version_filename}" >&2
    exit 1
fi

if ! archive_checksum="$(curl -sL "https://github.com/pwalch/lonesnake/archive/refs/tags/${new_version_filename}" | sha256sum | cut -d ' ' -f 1)"; then
    echo "[ERROR] Could not get checksum of lonesnake archive version ${new_version_filename}" >&2
    exit 1
fi

echo "Archive checksum: ${archive_checksum}"

echo "Update Brew formula with new version"
if ! gsed -i "s|tags/.*.tar.gz|tags/$release_version.tar.gz|" lonesnake.rb; then
    echo "[ERROR] Could not replace version number in lonesnake.rb" >&2
    exit 1
fi

echo "Update Brew formula with new checksum"
echo "s/sha256 \"[a-f0-9]+/sha 256 \"${archive_checksum}/"
if ! gsed -Ei "s/sha256 \"[a-f0-9]+/sha256 \"${archive_checksum}/" lonesnake.rb; then
    echo "[ERROR] Could not replace checksum in lonesnake.rb" >&2
    exit 1
fi
