#!/bin/sh
script_dir="$(cd "$(dirname "$0")" && pwd)"
curl --create-dirs -Lo "${script_dir}/data/usr/bin/nvim" \
  https://github.com/neovim/neovim/releases/download/v0.4.4/nvim.appimage
chmod -v u+x "${script_dir}/data/usr/bin/nvim"
git clone https://github.com/kristijanhusak/vim-packager.git \
  "${script_dir}/data/vim/cache/rtp/pack/packager/opt/vim-packager"
git clone https://github.com/zdharma/zinit.git \
  "${script_dir}/data/zsh/cache/zinit/bin"
mkdir -pv "${script_dir}/data/zsh/files"
stow -t "${script_dir}/data/zsh/files" -v zsh
