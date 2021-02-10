#!/bin/sh
curl --create-dirs -Lo data/usr/bin/nvim https://github.com/neovim/neovim/releases/download/v0.4.4/nvim.appimage
chmod -v u+x data/usr/bin/nvim
git clone https://github.com/kristijanhusak/vim-packager.git data/vim/cache/rtp/pack/packager/opt/vim-packager
git clone https://github.com/zdharma/zinit.git data/zsh/cache/zinit/bin
mkdir -pv data/zsh/files
stow -t data/zsh/files -v zsh
