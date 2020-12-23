" no-op, better be safe than sorry:
" https://stackoverflow.com/questions/5845557/in-a-vimrc-is-set-nocompatible-completely-useless
set nocompatible

" detect file type, type specific indentation
filetype plugin indent on

" syntax on
syntax on

" line number
set number

" sane defaults for tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" load pathogen
execute pathogen#infect()

" recommended syntastic settings from https://github.com/vim-syntastic/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" auto format
let g:rustfmt_autosave = 1

" change some colors
hi Search term=reverse ctermbg=7 guibg=Yellow

" Ctrl-J justify paragraph
:nnoremap <C-j> gwip

" Ctrl-K remove trailing spaces, return cursor to current position
:nnoremap <C-k> :%s/\s\+$//g<CR>''

" Ctrl-H replace all tabs with a space, return cursor to current position
:nnoremap <C-h> :%s/\t/ /g<CR>''

