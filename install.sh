#!/bin/sh
curl --create-dirs -Lo data/usr/bin/nvim https://github.com/neovim/neovim/releases/download/v0.4.4/nvim.appimage
chmod -v u+x data/usr/bin/nvim
