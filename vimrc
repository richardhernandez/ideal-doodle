set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'

Plugin 'tpope/vim-unimpaired'

" Base16 Colors
Plugin 'chriskempson/base16-vim'

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
let base16colorspace=256
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
set background=dark
colorscheme base16-eighties

set incsearch
set hlsearch
set ignorecase
set smartcase
set showmatch
set mouse=a
set cmdheight=2

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

" Sets local_vimrc to look for a non-default local vimrc
let g:local_vimrc = '.local_vimrc.vim'

" Delete current buffer
nnoremap <C-q> :bd<CR>

" Cycle through buffers
nnoremap <C-k> :bnext<CR>
nnoremap <C-j> :bprevious<CR>

" Search and center
nnoremap n nzz
nnoremap N Nzz

" adds Arduino's .ino file extension
au BufRead,BufNewFile *.ino set filetype=cpp

" wtf
set backspace=2
