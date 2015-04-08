#!/bin/sh

# create the dir than I worked in
LXDIR="~/lx/"
mkdir $LXDIR

cd $LXDIR

# create emacs configuration 
cp -rf .emacs ~/.emacs
cp -rf emacs ${LXDIR}
cp -rf emacs.d/* ~/.emacs.d

# install oh-my-zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# vimrc
cp -rf vimrc ~/.vimrc

# zshrc
cp -rf zshrc ~/.zshrc

# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# clone projects from github
mkdir github
cd github
git clone git@github.com:luis404/luis404.github.io.git blog
