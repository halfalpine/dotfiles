#!/bin/bash
#.make.sh

#This script creates symlinks from the home directory to ~/dotfiles
#http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/

#Variables
dir=~/dotfiles
old_dir=~/old_dotfiles
files="bashrc vimrc vim zshrc oh-my-zsh"

mkdir -p $old_dir
echo "Old dot files have been backed up..."

cd $dir

for file in $files; do
    mv ~/.$file ~/$old_dir
    ln -s $dir/$file ~/.$file
done

echo "Symlinks have been created for all dotfiles."
