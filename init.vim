if exists('g:vscode')
 " VSCode settings

set nonumber
filetype indent off
set nowrap 
set scrolloff=8

else
" ordinary settings

call plug#begin('$XDG_CONFIG_HOME/nvim/plugged')
    Plug 'morhetz/gruvbox'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airlineairblade/vim-gitgutter'  
    Plug 'airblade/vim-gitgutter'  
    Plug 'lervag/vimtex'  
call plug#end()
	
filetype plugin indent on
set termguicolors
set autoindent
set number relativenumber
set wrap
set linebreak
set scrolloff=8
set mousehide 
set mouse=a
" Colour scheme related
set background=dark
let g:gruvbox_contrast_dark = 'medium'
let g:gruvbox_transparent_bg = '1'
let g:gruvbox_italic = '1'
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
let g:vimtex_quickfix_autoclose_after_keystrokes = 2
let g:vimtex_complete_close_braces = 1
let g:vimtex_view_method = 'mupdf'
" let g:vimtex_view_mupdf_send_keys = '<shift>z'

" Spellchecking config 
source $XDG_CONFIG_HOME/nvim/spellcheck.vim

" Zettelkasten config
source $XDG_CONFIG_HOME/nvim/zettelkasten.vim

endif
