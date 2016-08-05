set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Plugin 'christoomey/vim-tmux-navigator'

Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-fugitive'

" Syntax highlighting for other things
Plugin 'scrooloose/syntastic'

" Please haskell work
" Plugin 'dag/vim2hs'

" Sublime Text-like fuzzy search
Plugin 'ctrlpvim/ctrlp.vim'

" NerdTree - FS explorer
" Plugin 'scrooloose/nerdtree'

" Fixes commenting out
Plugin 'tomtom/tcomment_vim'

" Supposed to make highlighting stuff easier
" Plugin 'terryma/vim-expand-region'

" Local vimrc: to make syntastic work better with Arduino
Plugin 'LucHermitte/lh-vim-lib'
Plugin 'LucHermitte/local_vimrc'

" YouCompleteMe: Autocomplete or somethingValloric/YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" JavaScript stuff
Plugin 'jelera/vim-javascript-syntax'   " better syntax highlighting
Plugin 'pangloss/vim-javascript'        " indentation and stuff

" Airline - for a better status bar, I guess
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Themes - uncomment the one worth using
" the gruvbox theme
" Plugin 'morhetz/gruvbox'
" Base16 Colors
" Plugin 'chriskempson/base16-vim'
" colorscheme base16-eighties
" Hybrid
Plugin 'w0ng/vim-hybrid'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1

set background=dark
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

set t_Co=256

colorscheme hybrid
if !has('nvim')
    let base16colorspace=256
endif

set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set number
set cursorline
set autochdir
set autoindent
" set colorcolumn=80
" set nowrap
syntax on
" this is for truecolor support in nvim
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set incsearch
set hlsearch
set ignorecase
set smartcase
set showmatch
set mouse=a
set cmdheight=2
set laststatus=2

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:syntastic_auto_loc_list = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_c_remove_include_errors = 1
let g:syntastic_cpp_remove_include_errors = 1


" YCM Stuff?
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_always_populate_location_list = 0
let g:ycm_auto_trigger = 1
let g:ycm_register_as_syntastic_checker = 1
let g:ycm_show_diagnostics_ui = 0
let g:ycm_confirm_extra_conf = 0
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '!!'

let g:ycm_filetype_blacklist = {
    \ 'tagbar'  : 1,
    \ 'qf'      : 1,
    \ 'notes'   : 1,
    \ 'markdown': 1,
    \ 'unite'   : 1,
    \ 'text'    : 1,
    \ 'vimwiki' : 1,
    \ 'pandoc'  : 1,
    \ 'mail'    : 1
    \}

" YCM Javascript
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

" Sets local_vimrc to look for a non-default local vimrc
let g:local_vimrc = '.local_vimrc.vim'

" CtrlP settings
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Airline settings
let g:airline#extensions#tabline#enabled = 1    " Automatically splay buffers into tabline
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

" Cycle through buffers
nnoremap <silent> <C-l> :bnext<CR>
nnoremap <silent> <C-h> :bprevious<CR>

" Search and center
nnoremap n nzz
nnoremap N Nzz

" Remaps the return key to clear search highlight
nnoremap <silent> <CR> :noh<CR><CR>

nnoremap <silent> <C-a> :set relativenumber!<CR>
inoremap <silent> <C-a> <ESC>:set relativenumber!<CR>li

" adds Arduino's .ino file extension
au BufRead,BufNewFile *.ino set filetype=cpp

" wtf
set backspace=2
