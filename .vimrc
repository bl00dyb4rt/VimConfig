" Specify a directory for plugins
" " - For Neovim: ~/.local/share/nvim/plugged
" " - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'python-rope/ropevim'
Plug 'davidhalter/jedi-vim'
Plug 'SirVer/ultisnips', { 'commit': 'a909dee82b6eaaa3ae001e27c3e95c58d487d242'}
Plug 'honza/vim-snippets'
Plug 'tpope/vim-fugitive'
Plug 'w0rp/ale'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'dense-analysis/ale'
" Initialize plugin system
call plug#end()
"
"
" Theme options
set t_Co=256
colorscheme Monokai
set background=dark    " Setting dark mode
""" Hilight search and set numbers
set hlsearch
highlight Search guibg=#af005f ctermbg=125
"""" clear highlight with <esc> after a search
nnoremap <C-h> :noh<return>
set number

set cc=80

" Airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'

" Nerdtree configuration
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$']
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
nmap <F6> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowHidden=1


" Switching between buffers
" Set commands to switching between buffers
:nnoremap <Tab> :bnext!<CR>
:nnoremap <S-Tab> :bprevious!<CR>
:nnoremap <C-X> :bp<bar>sp<bar>bn<bar>bd<CR>

" File searchs
map <C-p> :Files<CR>

" Ale Configuration
"""" Better formatting fo worp/ale
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%] [%...code...%]'
"""" Enable completion where available.
let g:ale_completion_enabled = 1
""" Customize linters that are turned on
let g:ale_linters = {
	\   'python': ['flake8'],
	\}
let g:ale_set_highlights = 0

" Fix keys
set backspace=2

let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsListSnippets='<c-tab>'
let g:UltiSnipsJumpForwardTrigger='<c-j>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'

nmap <F8> :TagbarToggle<CR>

" select in visualmode (Vv)
nmap <S-Up> V
nmap <S-Down> V
vmap <S-Up> k
vmap <S-Down> j
" 
" etc...
" similarly <S-Left>, <S-Right> for v
"
:nnoremap <C-Left> :tabprevious<CR>
:nnoremap <C-Right> :tabnext<CR>

ca tn tabnew
ca th tabp
ca tl tabn
