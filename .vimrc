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
map <leader>i :w<cr>:!python -i %<cr>
map <leader>n :set rnu! <bar> set nu!<cr>
map <leader>v :tabe ~/.vimrc<cr>

map <C-j> <C-e>
map <C-k> <C-y>

"Auto sources vimrc after changing it
autocmd bufwritepost .vimrc source ~/.vimrc

set listchars=tab:>-,space:_

"Plug 'nvim-treesitter/nvim-treesitter'
"https://github.com/junegunn/vim-plug
call plug#begin()

Plug 'ap/vim-css-color'
Plug 'terryma/vim-smooth-scroll'

Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'

call plug#end()

if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'allowlist': ['python'],
        \ })
endif

let g:lsp_log_file=''

" allow modifying the completeopt variable, or it will
" be overridden all the time
let g:asyncomplete_auto_completeopt = 0

set completeopt=menuone,noinsert,noselect,preview

