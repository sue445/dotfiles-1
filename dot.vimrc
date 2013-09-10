set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle/'))
endif

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/vimfiler'

NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'tpope/vim-haml'
NeoBundle 'tpope/vim-rails'

NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'slim-template/vim-slim'

NeoBundle 'elzr/vim-json'
NeoBundle 'kchmck/vim-coffee-script'

NeoBundle 'jaromero/vim-monokai-refined'

NeoBundle 'bling/vim-airline'

" NeoBundle 'Shougo/neosnippet'
" NeoBundle 'jpalardy/vim-slime'


"
"Bundle 'xoria256.vim'
"
"
"Bundle 'vim-coffee-script'
"Bundle 'coffee.vim'
"
"Bundle 'surround.vim'
"
"Bundle 'textobj-user'
"Bundle 'textobj-indent'
"
"
"
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


autocmd BufWritePre * :%s/\s\+$//ge
autocmd BufWritePre * :%s/\t/ /ge

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
source ~/dotfiles/dot.vimrc.vimfiler

autocmd QuickFixCmdPost *grep* cwindow

