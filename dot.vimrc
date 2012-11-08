set nocompatible
filetype off
set rtp+=~/.vim/vundle/
call vundle#rc()

Bundle 'xoria256.vim'

Bundle 'vim-ruby/vim-ruby'
Bundle 'jaromero/vim-monokai-refined'

Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/vimfiler'
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/vimproc'
Bundle 'Shougo/vimshell'

Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-markdown'

Bundle 'vim-coffee-script'
Bundle 'coffee.vim'

Bundle 'surround.vim'

Bundle 'textobj-user'
Bundle 'textobj-indent'

Bundle 'Lokaltog/vim-powerline'


filetype indent plugin on

set ambiwidth=double
set autoread
set hidden
set number
set showmatch

" コピーのインデント防止あとでtoggleできるようにする
" set paste

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

set tabstop=2
set shiftwidth=2
set expandtab
set nocompatible
set backspace=2
filetype on

set clipboard=unnamed

" popup menu color
hi Pmenu ctermbg=lightcyan ctermfg=black
hi PmenuSel ctermbg=blue ctermfg=black
hi PmenuSbar ctermbg=darkgray
hi PmenuThumb ctermbg=lightgray


autocmd BufWritePre * :%s/\s\+$//ge
autocmd BufWritePre * :%s/\t/ /ge

" template
autocmd BufNewFile *.rb 0r ~/.vim/templates/rb.tpl


" vimshell map
" nnoremap <silent> vs :VimShell<CR>
" nnoremap <silent> vsc :VimShellCreate<CR>
nnoremap <silent> vp :VimShellPop<CR>

" let g:vimshell_editor_command = '~/Applications/MacVim.app/Contents/MacOS/Vim'


" set t_kD=
" set t_kb=

source ~/dotfiles/dot.vimrc.color
source ~/dotfiles/dot.vimrc.statusline
source ~/dotfiles/dot.vimrc.completion
source ~/dotfiles/dot.vimrc.search
source ~/dotfiles/dot.vimrc.unite

