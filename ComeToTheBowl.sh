#!/bin/sh

cp ~/.vimrc vimrc
cp ~/.emacs .emacs
cp -rf ~/LX/emacs  emacs
cp -rf ~/.emacs.d emacs.d
cp ~/.zshrc zshrc
cp ~/.gitignore gitignore
cp -rf ~/.ssh ssh

git add -A
git ci -m "update"
