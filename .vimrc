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
    "Clear Highlighting"
    nmap <esc><esc> :noh<return>

    "Change leader key
    let mapleader = "\<Space>"

    "Netrw
    let g:netrw_liststyle=3 "Show the tree listing"
    map <leader>e :Texplore<CR>
    let ghregex='\(^\|\s\s\)\zs\.\S\+'
    let g:netrw_list_hide=ghregex

    "Spell check on and off
    map <leader>s :setlocal spell! spelllang=en_us<CR>

    "Build and Run C++
    map <leader>c :SCCompile<CR>
    map <leader>r :SCCompileRun<CR>

"Automatically delete all white space on save
    autocmd BufWritePre * %s/\s\+$//e

"Plugins
	call plug#begin('~/.vim/plugged')

    Plug 'flazz/vim-colorschemes'                       "Add more color schemes
    Plug 'octol/vim-cpp-enhanced-highlight'             "C++ highlighting
    Plug 'zxqfl/tabnine-vim'                            "Tabnine autocomplete
    Plug 'xuhdev/singlecompile'                         "To help compile and run
    Plug 'chiel92/vim-autoformat'                       "Autoformating for Python & C++
    Plug 'tmsvg/pear-tree'                              "automatically pairs parentheses, quotes, etc

	call plug#end()

