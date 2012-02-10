set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/ 
call vundle#rc()

Bundle 'xoria256.vim'
Bundle 'jpo/vim-railscasts-theme'

Bundle 'vim-ruby/vim-ruby'

Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/vimfiler'
Bundle 'Shougo/unite.vim'

Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rails'

set ambiwidth=double
set autoread
set hidden
set number
set showmatch

set directory-=.

"backup
set nobackup

"encoding
set enc=utf-8
set fenc=utf-8
set fencs=utf-8,iso-2022-jp,euc-jp,cp932
set fileformats=unix,dos

highlight WideSpace ctermbg=blue guibg=blue
highlight EOLSpace ctermbg=red guibg=red

