#!/usr/bin/env zsh
#
# Usage: setup.zsh

(cd ~ && git clone --depth=1 --recurse-submodules --shallow-submodules https://github.com/avamsi/dotfiles)

brew bundle --file=brewfile

go install github.com/avamsi/dotfiles@latest
go install github.com/avamsi/rd@latest
go install github.com/avamsi/tmuxl@latest

dotfiles link
