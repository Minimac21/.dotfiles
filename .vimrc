runtime defaults.vim
colo wildcharm

set clipboard=unnamed
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
map <leader>4 :w<cr>:!wc -w %<cr>
map <leader>c :w<cr>:!./cfdg % --display sxiv<cr>


map <leader>n :set rnu! <bar> set nu!<cr>
map <leader>v :tabe /home/mac/.vimrc<cr>
map <leader>z :w<cr>:!compile_show_pdf %<cr>
"map gd :LspDefinition<cr>

map <C-j> <C-e>
map <C-k> <C-y>

"Auto sources vimrc after changing it
autocmd bufwritepost .vimrc source ~/.vimrc

set listchars=tab:>-,space:_

"Plug 'nvim-treesitter/nvim-treesitter'
"https://github.com/junegunn/vim-plug
call plug#begin()

Plug 'tribela/vim-transparent'
Plug 'ap/vim-css-color'
Plug 'terryma/vim-smooth-scroll'

Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'powerline/powerline'

call plug#end()

"endif

let g:lsp_log_file=''

" allow modifying the completeopt variable, or it will
" be overridden all the time
let g:asyncomplete_auto_completeopt = 0

set completeopt=menuone,noinsert,noselect,preview

let g:word_count=wordcount().words
function WordCount()
    if has_key(wordcount(),'visual_words')
        let g:word_count=wordcount().visual_words."/".wordcount().words " count selected words
    else
        let g:word_count=wordcount().cursor_words."/".wordcount().words " or shows words 'so far'
    endif
    return g:word_count
endfunction

set statusline+=\ w:%{WordCount()},
