set nocompatible
filetype off

if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/unite-outline'
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

NeoBundle "othree/javascript-libraries-syntax.vim"
NeoBundle 'othree/html5.vim'

NeoBundle 'hail2u/vim-css3-syntax'

NeoBundle 'gregsexton/gitv.git'
NeoBundle 'kmnk/vim-unite-giti'

NeoBundle 'digitaltoad/vim-jade'

NeoBundle 'majutsushi/tagbar'
NeoBundle 'dgryski/vim-godef'


call neobundle#end()


" NeoBundle 'Shougo/neosnippet'
" NeoBundle 'jpalardy/vim-slime'

set rtp^=$GOROOT/misc/vim
set rtp^=$GOPATH/src/github.com/nsf/gocode/vim

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
set ambiwidth=double
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
source ~/dotfiles/dot.vimrc.git
source ~/dotfiles/dot.vimrc.golang

autocmd QuickFixCmdPost *grep* cwindow
autocmd BufNewFile,BufRead *.cap set filetype=ruby


" function Hoge() range
"   " 行頭のスペース削除
"   :%s/^\s*//g
"   " //以降を削除
"   :%s;//.*;;g
"   " 行末のスペース削除
"   :%s/\s\+$//ge
"   :%s/\t/ /ge
"   " {}の中身を削除
"   :call search("{")
"   :normal diB
"   " 行の結合
"   :normal ggVGJ
"   :%s/, /,/g
" endfunction
"
" command! Cpparse call Hoge()

autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 1

