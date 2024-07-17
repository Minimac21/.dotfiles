runtime defaults.vim
colo wildcharm

"S for global substitution
nnoremap S :%s//g<Left><Left>

set nu
set rnu 
set tabstop=2 
set shiftwidth=2 
set softtabstop=2
set expandtab
set autoindent

map <leader>r :w<cr>:!%:p<cr>
map <leader>p :w<cr>:!python<cr>
map <leader>n :set rnu! <bar> set nu!<cr>
map <leader>v :tabe ~/.vimrc<cr>

map <C-j> <C-e>
map <C-k> <C-y>

"Auto sources vimrc after changing it
autocmd bufwritepost .vimrc source ~/.vimrc

set listchars=tab:>-,space:_

"https://github.com/junegunn/vim-plug
call plug#begin()

Plug 'ap/vim-css-color'
Plug 'terryma/vim-smooth-scroll'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

call plug#end()
