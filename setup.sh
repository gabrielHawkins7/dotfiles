#!/bin/bash

ln -s ~/.config/dotfiles/_nvim/nvim ~/.config/nvim
ln -s ~/.config/dotfile/_nvim/textvim ~/.config/textvim

echo "source ~/.config/dotfiles/.bashsetup" >> ~/.bashrc
