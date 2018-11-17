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

" Themes ----------------------------------------
Plug 'lifepillar/vim-solarized8'
Plug 'liuchengxu/space-vim-dark'
Plug 'rakr/vim-one'
Plug 'NLKNguyen/papercolor-theme'
Plug 'junegunn/seoul256.vim'
Plug 'reedes/vim-colors-pencil'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'chriskempson/vim-tomorrow-theme'

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
let g:solarized_underline = 1
let g:solarized_italic = 1
let g:solarized_bold = 1
colorscheme Tomorrow-Night-Bright

" No more tildes!
hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Editor stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
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
"" Python Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Latex settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType tex,latex nnoremap <leader>c :!pdflatex %<cr>



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
let g:ale_linters = {'cpp':[]}
" let g:ale_lint_on_enter = 0



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" statusline settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
" set statusline=%<\ %{mode()}\ \|\ %F%=\ %{&fileformat}\ \|\ %{&fileencoding}\ \|\ %{&filetype}\ \|\ %p%%\ \|\ LN\ %l:%c\ 
set statusline=\ %m\ %f%=\ %{&fileformat}\ \ %{&fileencoding}\ \ %{&filetype}\ \ %p%%\ \ LN\ %l:%c\ 

