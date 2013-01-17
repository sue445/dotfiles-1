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

cd dotfiles/dot.tmux/tmux-MacOSX-pasteboard
make reattach-to-user-namespace
