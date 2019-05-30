set nocompatible

" Bootstrap plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Plugin stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/bundle')
Plug 'mhinz/vim-startify'

" Basic insert mode stuff -----------------------
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

" Language plugins ------------------------------
" Plug 'sheerun/vim-polyglot'

" Git wrapper
Plug 'tpope/vim-fugitive'

" Syntax checking and code completion -----------
Plug 'w0rp/ale'
Plug 'maralla/completor.vim'
Plug 'ervandew/supertab'

" Fuzzy completion ------------------------------
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Python plugins --------------------------------
" Plug 'vim-python/python-syntax'
" Plug 'hynek/vim-python-pep8-indent'
Plug 'vim-scripts/indentpython.vim'

" Editor stuff ----------------------------------
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'majutsushi/tagbar'


" Themes ----------------------------------------
Plug 'lifepillar/vim-solarized8'
Plug 'liuchengxu/space-vim-dark'
Plug 'rakr/vim-one'
Plug 'NLKNguyen/papercolor-theme'
Plug 'junegunn/seoul256.vim'
Plug 'reedes/vim-colors-pencil'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'kaicataldo/material.vim'
Plug 'nightsense/stellarized'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
call plug#end()

" execute pathogen#infect()
filetype plugin indent on

"" change cursor shape in terminal depending on mode
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Remaps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap jk <Esc>
nnoremap <space> :
nnoremap <up> <C-w>+
nnoremap <down> <C-w>-
nnoremap <left> <C-w><
nnoremap <right> <C-w>>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Leader Maps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","

"" split navigation
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>
nnoremap <leader>n :set invnumber<CR>
nnoremap <leader>\ :noh<CR>
nnoremap <leader>s :Startify<CR>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Appearance
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set background=dark
set termguicolors
colorscheme PaperColor
highlight Comment cterm=italic

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
set guicursor+=n-v-c:blinkon0


" No more tildes!
" hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Editor stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=a
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=100
set expandtab
set autoindent
set fileformat=unix
set nowrap
" autocmd FileType * setlocal indentkeys+=!<Tab>
inoremap <S-Tab> <C-d>

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ruler
set showcmd
set showmode
set scrolloff=4
set hlsearch
set incsearch
set ignorecase
set smartcase
set clipboard=unnamed
set autochdir
set splitbelow


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Focus mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
let g:goyo_width=80
let g:goyo_height=95

let g:limelight_default_coefficient = 0.7
let g:limelight_paragraph_span = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Python Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Latex settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType tex,latex nnoremap <leader>c :!pdflatex %<cr>
autocmd FileType tex,latex nnoremap <leader>b :!bibtex %:r<cr>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Completor
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocmd VimEnter * CompletorEnable
" let g:completor_auto_trigger = 1
let g:completor_python_binary = 'python3'
let g:completor_doc_position = 'bottom'
"inoremap <expr> <Tab> pumvisible() ? "<C-N>" : "<C-R>=completor#do('complete')<CR>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Supertab
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:SuperTabDefaultCompletionType = "<c-n>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Denite
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nnoremap <leader>f :Denite file_rec<cr>
" call denite#custom#option('default', {
"       \ 'prompt': '>>'
"       \ })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" FZF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>f :Files<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Ale
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_lint_on_text_changed = 'never'
let g:ale_cache_executable_check_failures = 1
let g:ale_linters = {'cpp':[], 'python':['pylint']}
let g:ale_python_pylint_executable='pylint'
" let g:ale_lint_on_enter = 0



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" statusline settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
" set statusline=%<\ %{mode()}\ \|\ %F%=\ %{&fileformat}\ \|\ %{&fileencoding}\ \|\ %{&filetype}\ \|\ %p%%\ \|\ LN\ %l:%c\ 
set statusline=\ %m\ %f%=\ %{FugitiveStatusline()}\ %{&fileformat}\ \ %{&fileencoding}\ \ %{&filetype}\ \ %p%%\ \ LN\ %l:%c\ 

