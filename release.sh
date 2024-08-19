#!/usr/bin/env bash

set -euo pipefail

if [[ $# -ne 1 ]]; then
    echo "[ERROR] Invalid arguments" >&2
    echo "Usage: $0 CURRENT_VERSION_NUMBER" >&2
    exit 1
fi

current_version="$1"
major_version=$(echo "$current_version" | cut -d. -f1)
minor_version=$(echo "$current_version" | cut -d. -f2)
patch_version=$(echo "$current_version" | cut -d. -f3)

next_minor_version=$((minor_version + 1))
new_version="${major_version}.${next_minor_version}.${patch_version}"
new_version_filename="${new_version}.tar.gz"
if ! curl -sL -I "https://github.com/pwalch/lonesnake/archive/refs/tags/${new_version_filename}"; then
    echo "[ERROR] Could not download lonesnake archive version ${new_version_filename}" >&2
    exit 1
fi

if ! archive_checksum="$(curl -sL "https://github.com/pwalch/lonesnake/archive/refs/tags/${new_version_filename}" | sha256sum | cut -d ' ' -f 1)"; then
    echo "[ERROR] Could not get checksum of lonesnake archive version ${new_version_filename}" >&2
    exit 1
fi

echo "Archive checksum: ${archive_checksum}"

escaped_current_version=$(echo "$current_version" | sed 's/\./\\./g')
escaped_new_version=$(echo "$new_version" | sed 's/\./\\./g')
echo "Update Brew formula with new version"
echo "s/${escaped_current_version}/${escaped_new_version}/"
if ! gsed -i "s/${escaped_current_version}/${escaped_new_version}/" lonesnake.rb; then
    echo "[ERROR] Could not replace version number in lonesnake.rb" >&2
    exit 1
fi

echo "Update Brew formula with new checksum"
echo "s/sha256 \"[a-f0-9]+/sha 256 \"${archive_checksum}/"
if ! gsed -Ei "s/sha256 \"[a-f0-9]+/sha256 \"${archive_checksum}/" lonesnake.rb; then
    echo "[ERROR] Could not replace checksum in lonesnake.rb" >&2
    exit 1
fi
