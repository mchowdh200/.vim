set nocompatible
execute pathogen#infect()
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
set t_Co=256
let g:solarized_underline = 1
let g:solarized_italic = 1
let g:solarized_bold = 1
colorscheme solarized

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Python Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Jedi
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


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
nnoremap <leader>f :CtrlP<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Deoplete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:deoplete#enable_at_startup = 1



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" CtrlP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_clear_cache_on_exit = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" statusline settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
" set statusline=%<\ %{mode()}\ \|\ %F%=\ %{&fileformat}\ \|\ %{&fileencoding}\ \|\ %{&filetype}\ \|\ %p%%\ \|\ LN\ %l:%c\ 
set statusline=\ %m\ %F%=\ %{&fileformat}\ \ %{&fileencoding}\ \ %{&filetype}\ \ %p%%\ \ LN\ %l:%c\ 

