#!/usr/bin/env zsh
#
# Usage: setup.zsh

brew bundle --file=/workspaces/codespace/brewfile --no-lock
"$HOMEBREW_PREFIX/opt/fzf/install" --all --no-bash --no-update-rc

cargo install --git https://github.com/martinvonz/jj --locked --bin jj jujutsu

git clone --depth=1 --recurse-submodules --shallow-submodules https://github.com/avamsi/dotfiles ~/dotfiles

go install github.com/avamsi/dotfiles@latest
go install github.com/avamsi/rd@latest
go install github.com/avamsi/tmuxl@latest

dotfiles link --force
