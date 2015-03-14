#!/bin/sh

# create the dir than I worked in
LXDIR="~/LX/"
mkdir $LXDIR

# create emacs configuration 
cp -rf .emacs ~/.emacs
cp -rf emacs ${LXDIR}
cp -rf emacs.d ~/.emacs.d

# vimrc
cp -rf vimrc ~/.vimrc

# zshrc
cp -rf zshrc ~/.zshrc
