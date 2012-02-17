set nocompatible
filetype off
set rtp+=~/.vim/vundle/
call vundle#rc()

Bundle 'xoria256.vim'
Bundle 'jpo/vim-railscasts-theme'

Bundle 'vim-ruby/vim-ruby'

Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/vimfiler'
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/vimproc'
Bundle 'Shougo/vimshell'

Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rails'

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
syntax on
filetype on

set incsearch
set hlsearch
nmap <ESC><ESC> ;nohlsearch<CR><ESC>

" set cursorline

" unite.vim
let g:unite_enable_start_insert = 1

" インサート／ノーマルどちらからでも呼び出せるようにキーマップ
nnoremap <silent> <C-f> :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
inoremap <silent> <C-f> <ESC>:<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> <C-b> :<C-u>Unite buffer file_mru<CR>
inoremap <silent> <C-b> <ESC>:<C-u>Unite buffer file_mru<CR>


nnoremap <silent> ,uf :<C-u>Unite file<CR>
nnoremap <silent> ,uu :<C-u>Unite buffer file_mru<CR>
nnoremap <silent> ,uo :<C-u>Unite outline<CR>
nnoremap <silent> ,uh :<C-u>Unite help<CR>

" unite.vim上でのキーマッピング
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
" 単語単位からパス単位で削除するように変更
  imap <buffer> <C-w> <Plug>(unite_delete_backward_path)
" ESCキーを2回押すと終了する
  nmap <silent><buffer> <ESC><ESC> q
  imap <silent><buffer> <ESC><ESC> <ESC>q
endfunction

autocmd BufWritePre * :%s/\s\+$//ge
autocmd BufWritePre * :%s/\t/ /ge

" template
autocmd BufNewFile *.rb 0r ~/.vim/templates/rb.tpl


" vimshell map
nnoremap <silent> vs :VimShell<CR>
nnoremap <silent> vsc :VimShellCreate<CR>
nnoremap <silent> vp :VimShellPop<CR>

" let g:vimshell_editor_command = '~/Applications/MacVim.app/Contents/MacOS/Vim'

source ~/dotfiles/dot.vimrc.statusline
source ~/dotfiles/dot.vimrc.completion

