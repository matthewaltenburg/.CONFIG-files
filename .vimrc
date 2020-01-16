"  by Matthew Altenburg
"  ___      ___  ___   _____ ______    ________   ________
" |\  \    /  /||\  \ |\   _ \  _   \ |\   __  \ |\   ____\
" \ \  \  /  / /\ \  \\ \  \\\__\ \  \\ \  \|\  \\ \  \___|
"  \ \  \/  / /  \ \  \\ \  \\|__| \  \\ \   _  _\\ \  \
"   \ \    / /    \ \  \\ \  \    \ \  \\ \  \\  \|\ \  \____
"    \ \__/ /      \ \__\\ \__\    \ \__\\ \__\\ _\ \ \_______\
"     \|__|/        \|__| \|__|     \|__| \|__|\|__| \|_______|

" Some basics
	set number relativenumber     	"Turn on line numbers
	set hlsearch             		"Turn on highlighting
	set nocompatible 	        	"Set compatibility to Vim only.
	set wildmode=longest,list,full	"Turns on autocomplete
	set tabstop=4		        	"Use 4 spaces instead of tab stop
    set shiftwidth=4                "Set 4 spaces >
	set expandtab		        	"Change all tabs to spaces

" Mapping

    "Change leader key
    let mapleader = "\<Space>"
    "Spell check on and off
    map <leader>s :setlocal spell! spelllang=en_us<CR>
    "Nerdtree
    map <leader>n :NERDTree<CR>
    "Reload Current file
    map <leader>r :source %<CR>
    "Build and Run C++
    map <leader>c :SCCompile<CR>
    map <leader>r :SCCompileRun<CR>

"Automatically delete all white space on save
    autocmd BufWritePre * %s/\s\+$//e

"Plugins
	call plug#begin('~/.vim/plugged')

    Plug 'octol/vim-cpp-enhanced-highlight'             "C++ highlighting
    Plug 'scrooloose/nerdtree'                          "NERDTree
	Plug 'neoclide/coc.nvim', {'branch': 'release'}		"Intellisense engine for vim8
    Plug 'xuhdev/singlecompile'                         "To help compile and run

	call plug#end()

