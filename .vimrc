set nocompatible " Set compatibility to Vim only.
filetype off     " required
set number " show line number
set noswapfile
set mouse=a " enable mouse in vim
set encoding=utf-8 " default encoding method
packadd! dracula
syntax enable
colorscheme dracula
"syntax on " enable syntax highlight
"colorscheme onedark "ondark theme
filetype off " Helps force plug-ins to load correctly when it is turned back on below.
set hlsearch " Highlight matching search patterns
set incsearch " Enable incremental search
set ignorecase " Include matching uppercase words with lowercase search term
set smartcase " Include only uppercase words with uppercase search term
" NERDTree
nmap <F5> :NERDTreeToggle<CR>
"autocmd vimenter * NERDTree

"Run Python file
autocmd FileType python map <buffer> <F2> :w<CR>:exec '!python3.8' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F2> <esc>:w<CR>:exec '!python3.8' shellescape(@%, 1)<CR>

"vim-flake8 is static syntax and style checker for Python source code
"autocmd FileType python map <buffer> <F3> :call flake8#Flake8()<CR>

"Indentation in python
set expandtab           " enter spaces when tab is pressed
set textwidth=120       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line
set backspace=indent,eol,start " make backspaces more powerfull
set smarttab

"Pathogen vim package-manager
execute pathogen#infect()

"Plug-vim
call plug#begin() 
Plug 'junegunn/fzf.vim' "Fuzzy search vim integration
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()

" Set shortcut-key for fuzzy search
nnoremap <C-p> :Files<Cr>
