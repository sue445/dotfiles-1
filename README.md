# Dotfiles
- files
 - .vim
 - .emacs.d
 - .screenrc
 - .gemrc

# Usage

git submodule init
git submodule update

ln -s dotfiles/dot.XXXX XXXX

vim .vimrc
:BundleInstall

cd dotfiles/bundle/vimproc
make -f make_mac.mak
