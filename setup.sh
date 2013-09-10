#!/bin/bash

git submodule init
git submodule update

for file in `ls -d dot.*`
do
  echo $file
  ln -s $HOME/dotfiles/$file $HOME/${file#dot}
done
