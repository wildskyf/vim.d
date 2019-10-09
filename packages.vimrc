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
" Plug 'mustache/vim-mustache-handlebars', {'for': 'mustache'}
" Plug 'pangloss/vim-javascript'              " Js lib
" Plug 'mxw/vim-jsx', {'for': ['js', 'jsx'] }
" Plug 'posva/vim-vue'
" Plug 'rust-lang/rust.vim', {'for': 'rust'}
" Plug 'timonv/vim-cargo', {'for': 'rust'}
" Plug 'fatih/vim-go'
Plug 'sheerun/vim-polyglot'

" setting enhancement/auto run
Plug 'editorconfig/editorconfig-vim'        " Editorconfig is awesome
Plug 'ntpeters/vim-better-whitespace'       " Get rid of redundant whitespace
Plug 'andymass/vim-matchup'                 " match enhancement for html
Plug 'kshenoy/vim-signature'                " bookmark sign
Plug 'thiagoalessio/rainbow_levels.vim'     " adjust background according to level
" Plug 'ap/vim-css-color', {'for': 'css'}
" Plug 'cakebaker/scss-syntax.vim', {'for': 'scss'}
" Plug 'shmargum/vim-sass-colors', {'for': ['css', 'scss'] }

" tool
Plug 'ctrlpvim/ctrlp.vim'                   " Fuzzy search
Plug 'FelikZ/ctrlp-py-matcher'              " ctrlP matcher
Plug 'jremmen/vim-ripgrep'
Plug 'mattn/emmet-vim'                      " Web developer must have

" Theme
Plug 'w0ng/vim-hybrid'
" Plug 'wellsjo/wellsokai.vim'
" Plug 'tomasr/molokai'
" Plug 'jacoborus/tender.vim'

" testing
" =============================

" archived
" =============================

" Plug 'nikvdp/ejs-syntax', {'for': 'ejs'}
" Plug 'briancollins/vim-jst'               " for jst, ejs
" Plug 'w0rp/ale'


Plug 'nathangrigg/vim-beancount'

call plug#end()
