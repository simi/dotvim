execute pathogen#infect()
syntax on
filetype plugin indent on

let mapleader = ","
color jellybeans

set nocompatible
set relativenumber
set ruler

set mouse=a
set cul cuc

set tags+=.git/tags
set tags+=gems.tags
map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
map <Leader>re :!ctags -f gems.tags -R --languages=ruby --exclude=.git --exclude=log . $(bundle list --paths)<CR>

map <Leader>zz :ZoomWin<CR>
map <Leader>t :CtrlP<CR>
nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTreeToggle<CR>
map <leader>d :NERDTreeFind<cr>

vnoremap <leader>gg y:Ggrep <c-r>"<cr>

set autoindent		" always set autoindenting on
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set wildmode=list:full
set suffixesadd=.rb     " find ruby files
set path+=lib/**,test/** " look in lib and test

set expandtab
set shiftwidth=2
set softtabstop=2
set kp=ri

set secure

set backupdir=$TEMP,$TMP,.

set scrolloff=2
set laststatus=2

let g:html_indent_inctags = "html,body,head,tbody"
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

if has("gui_running")
  :set guioptions-=m  "remove menu bar
  :set guioptions-=T  "remove toolbar
  :set guioptions-=r  "remove right-hand scroll bar
  :set guioptions-=L

  set guifont="Liberation Mono 10"

  if has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

let g:sql_type_default = 'pgsql'
let g:vimwiki_global_ext = 0
let g:vimwiki_list = [
  \ {
  \   'nested_syntaxes': {'ruby': 'ruby', 'bash': 'sh', 'scala': 'scala', 'sql': 'sql'},
  \   'syntax': 'markdown',
  \   'ext': '.md',
  \   'path': '~/vimwiki'
  \ }
\ ]

let g:markdown_fenced_languages=[
      \ 'bash=sh',
      \ 'css',
      \ 'erb=eruby',
      \ 'haskell',
      \ 'html',
      \ 'javascript',
      \ 'latex=tex',
      \ 'python',
      \ 'ruby',
      \ 'pgsql',
      \ ]
let g:htl_css_templates = 1
