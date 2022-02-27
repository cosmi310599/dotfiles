:set number
:set relativenumber
:set autoindent
:set tabstop=2 
:set shiftwidth=4 
:set smarttab
:set mouse=a

call plug#begin('~/.config/nvim/plugged')

Plug '/preservim/nerdtree' " File system explorer for the Vim
Plug '/vim-airline/vim-airline' " Status bar at the bottom of each vim window
Plug '/ap/vim-css-color' " CSS Color Preview
Plug '/awesome-vim-colorschemes' " Collection of color shemes for vim
Plug '/neoclide/coc.nvim'  " Auto Completion
Plug '/ryanoasis/vim-devicons' " Developer Icons
Plug '/tc50cal/vim-terminal' 
Plug '/preservim/tagbar' " Tagbar for code navigation
Plug '/vim-visual-multimg' " Visual-block
Plug '/neoclide/coc.nvim' " Make vim as VSCode
Plug '/alvan/vim-closetag' 
" Plug '/nvim-telescope/telescope.nvim'
Plug '/lsp_signature.nvim.git' " Show function signature when you type
Plug '/ptzz/lf.vim.git' " Lf integration 
Plug '/voldikss/vim-floaterm.git'

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>


let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

:colorscheme abstract
":colorscheme afterglow

let NERDTreeShowHidden=1
