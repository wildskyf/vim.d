" ========================================
" ============== packages ================
" ========================================

set nocompatible
filetype off

call plug#begin('~/.vim/plug_dir')

" libs
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'

" syntax
Plug 'mxw/vim-jsx'
Plug 'othree/yajs.vim'
Plug 'leafgarland/typescript-vim'
Plug 'nathangrigg/vim-beancount'

" setting enhancement/auto run
Plug 'editorconfig/editorconfig-vim'        " Editorconfig is awesome
Plug 'ntpeters/vim-better-whitespace'       " Get rid of redundant whitespace
Plug 'andymass/vim-matchup'                 " match enhancement for html
Plug 'kshenoy/vim-signature'                " bookmark sign
Plug 'thiagoalessio/rainbow_levels.vim'     " adjust background according to level

" tool
Plug 'ctrlpvim/ctrlp.vim'                   " Fuzzy search
Plug 'FelikZ/ctrlp-py-matcher'              " ctrlP matcher
Plug 'jremmen/vim-ripgrep'
Plug 'mattn/emmet-vim'                      " Web developer must have
Plug 'nathangrigg/vim-beancount'

Plug 'dense-analysis/ale'

" Theme
Plug 'sickill/vim-monokai'
" Plug 'w0ng/vim-hybrid'
" Plug 'wellsjo/wellsokai.vim'
" Plug 'tomasr/molokai'
" Plug 'jacoborus/tender.vim'
" Plug 'cocopon/iceberg.vim'

" testing
" =============================

" archived
" =============================

call plug#end()
