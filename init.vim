if exists('g:vscode')
	" VSCode extensions
else
	" orinary extensions
call plug#begin('$XDG_CONFIG_HOME/nvim/plugged')
    Plug 'morhetz/gruvbox'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airlineairblade/vim-gitgutter'  
    Plug 'airblade/vim-gitgutter'  
    Plug 'lervag/vimtex'  
    " Plug 'github/copilot.vim'  
    " " Seemed not to work for me, I manually
    " cloned the repo into my config directory instead
    
    " Plug 'vim-pandoc/vim-pandoc'  
    " Plug 'vim-pandoc/vim-pandoc-syntax'  
call plug#end()
	

" General

" Temporarily disable copilot globally until I figure out what I want to do with it
 let g:copilot_filetypes = {
	\ '*': v:false,
\ }

filetype plugin indent on
set termguicolors
set autoindent
set number relativenumber
set wrap
set linebreak

set background=dark
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_transparent_bg = '1'
: colorscheme gruvbox
syntax enable

" Set hard line breaks at 90 characters, for writing prose in markdown and latex
au FileType markdown setlocal tw=90
au FileType tex setlocal tw=90

nnoremap j gj
nnoremap k gk
inoremap kj <esc>
cnoremap kj <C-C>

" Latex related
let g:vimtex_view_method = 'mupdf'

" Spellchecking config 
source $XDG_CONFIG_HOME/nvim/spellcheck.vim


" Zettelkasten config
source $XDG_CONFIG_HOME/nvim/zettelkasten.vim

endif

