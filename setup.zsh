#!/usr/bin/env zsh
#
# Usage: setup.zsh

brew bundle --file=/workspaces/codespace/brewfile

git clone --depth=1 --recurse-submodules --shallow-submodules https://github.com/avamsi/dotfiles /home/vscode/dotfiles

go install github.com/avamsi/dotfiles@latest
go install github.com/avamsi/rd@latest
go install github.com/avamsi/tmuxl@latest

dotfiles link
