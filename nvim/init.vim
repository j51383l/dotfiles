" config nvim -> ~/.config/nvim/init.vim
if !exists('g:vscode')

call plug#begin('~/.local/share/nvim/plugged')

" https://github.com/Shougo/deoplete.nvim/wiki/Completion-Sources
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'

Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdtree'

Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'

call plug#end()

""" configuring vim """
let g:python3_host_prog='/opt/anaconda3/bin/python'

syntax on
colorscheme gruvbox
set background=dark " use dark mode


""" configuring plugins """




"for more options and their meanings, check :h deoplete-options inside nvim
let g:deoplete#enable_at_startup = 1

" navigate through the auto-completion list with <Ctrl-N> and <Ctrl-P>
" automatically close the method preview window
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" open the preview window below the current window
set splitbelow

"navigate through the auto-completion list with Tab
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"



"in command mode, input :NERDTree to open the directory your current file resides.
"place the cursor in the file you want to open and press o to open this file in the right window.
"this is the same as how you switch windows in Vim. Press ctrl and press w two times quickly to switch window. You can also press <Ctrl-w> and then press L.
"press q while your cursor is this window? Or use NERDTreeClose command in command mode.
nnoremap <silent> <C-e> :NERDTreeToggle<CR>


" neoformat configuration
" Enable alignment
let g:neoformat_basic_format_align = 1
" Enable tab to space conversion
let g:neoformat_basic_format_retab = 1
" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

endif
