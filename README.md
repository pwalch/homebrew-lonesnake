# homebrew-lonesnake

This is the repo for the Brew formula of the [lonesnake](https://github.com/pwalch/lonesnake) Python tool.

# Usage

First time:
- `brew tap --force homebrew/core`

For each new version:
- create release in GitHub including `lonesnake` and `lonesnake-kit` Bash scripts
- `brew create https://github.com/pwalch/lonesnake/archive/refs/tags/${VERSION_NUMBER}.tar.gz`
- `cat /usr/local/Homebrew/Library/Taps/homebrew/homebrew-core/Formula/l/lonesnake.rb`
- take the SHA and version number from the displayed `lonesnake.rb` file and paste them in `lonesnake.rb` and `lonesnake-kit.rb`
