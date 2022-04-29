" ****************************************************
"             Command list of mjVimPack
"
" ****** Normal Mode ******
" hjkl  : Left Down Up Right
" i     : enter insert mode in front of the cursor.
" I     : enter insert mode in front of the line.
" a     : enter insert mode at back of the cursor.
" <F5>  : Number toggle.
" <leader>ne : NERDTree toggle. <ledaer> is ','. e.g.),ne
" <leader>c<space> : NERDCommenter toggle. Comment made.
" <ledaer>cs       : NERDCommenter. Sexy comment.
"
" <Ctrl>n : multiple cursor. Select next
" <Ctrl>p : multiple cursor. Go to previous one.
" <Ctrl>x : multiple cursor. Skip this one.
"           When multiple cursors are selected, push 'xi' if you want to replace the text, 
"           or push 'I' to insert texts in front of the cursor,
"           or Push 'A' to attach texts at back of the cursor.
"
" ****************************************************

"let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

" For mac. Yank to clipboard.
set clipboard=unnamed

" Basic Settings
colorscheme CodeSchool3
set termguicolors
syntax on
set autoindent
set number
set relativenumber
set hlsearch
set ignorecase
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set scrolloff=999
set colorcolumn=80
autocmd FileType make setlocal noexpandtab
autocmd FileType go setlocal noexpandtab

" Key Settings
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
let mapleader = ","
nnoremap <leader>q :bp<CR>
nnoremap <leader>w :bn<CR>
nnoremap <silent> <leader>d :NERDTreeClose<bar>:%bd\|e#<bar>:NERDTree<bar>:NERDTreeClose<cr>

" Key Setting - resize windows
nnoremap <silent> <Leader>= :exe "resize +3"<CR>
nnoremap <silent> <Leader>- :exe "resize -3"<CR>
nnoremap <silent> <Leader>] :exe "vertical resize +8"<CR>
nnoremap <silent> <Leader>[ :exe "vertical resize -8"<CR>

nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>_ :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader>} :exe "vertical resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>{ :exe "vertical resize " . (winheight(0) * 2/3)<CR>

" vim-plug
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes


Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'terryma/vim-smooth-scroll'
Plug 'scrooloose/nerdcommenter'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Initialize plugin system
call plug#end()

" for vim-airline
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
let g:airline_theme='hybrid'
set laststatus=2 " turn on bottom bar

" The-NERD-Tree
" autocmd BufEnter * lcd %:p:h
autocmd VimEnter * if !argc() | NERDTree | endif
nnoremap <silent> <expr> <leader>ne g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"

let NERDTreeShowLineNumbers=1
let g:NERDTreeWinPos = "left"

" vim-multiple-cursor
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" vim-smooth-scroll
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 10, 5)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 10, 5)<CR>
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 3)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 3)<CR>

":CocInstall coc-snippets
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
