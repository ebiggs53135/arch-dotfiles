" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1

set t_Co=256
set laststatus=2
let g:lightline = {
  \ 'colorscheme': 'wombat'
  \}
set noshowmode

let g:livepreview_previewer = 'zathura'

source $VIMRUNTIME/defaults.vim
"set rtp+=~/.vim/pack/my-plugins/start/wombat256grf
colorscheme wombat
set background=dark
"let g:gruvbox_contrast_dark = 'hard'

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

let g:tex_flavor = 'latex'
let g:matchup_override_vimtex = 1

let g:matchup_match_paren_deferred = 1

"autocmd vimenter * NERDTree "open NERDTree whenever Vim is opened
"open NERDTree when Vim is opened with no files specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"do not open NERDTree when Vim is opened when opening a saved session
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") && v:this_session == "" | NERDTree | endif
"close Vim if it is the only window left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:python_highlight_all = 1 " highlight Python code properly
let g:pymode_options_max_line_length = 79
let g:pymode_options_colorcolumn = 8
let g:pymode_line_options_pep8 = {'max_line_length': g:pymode_options_max_line_length}

let g:minimap_highlight='Visual'
set number relativenumber
set clipboard=unnamedplus
syntax on
set wrap
set textwidth=79
set matchpairs+=<:>

set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4    "one tab = 4 spaces
set softtabstop=4    "one tab = 4 spaces
set expandtab    "use spaces instead of tabs
set smarttab    "be smart using tabs
set noshiftround

" Display 5 lines above/below the cursor when scrolling with a mouse
set scrolloff=5
" Fixes common backspace problems
set backspace=indent,eol,start

set showmode
set showcmd
syntax on
filetype plugin indent on
