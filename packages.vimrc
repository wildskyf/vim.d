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
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'othree/yajs.vim'
" Plug 'yuezk/vim-js'
" Plug 'leafgarland/typescript-vim'

" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" setting enhancement/auto run
Plug 'editorconfig/editorconfig-vim'        " Editorconfig is awesome
Plug 'ntpeters/vim-better-whitespace'       " Get rid of redundant whitespace
Plug 'andymass/vim-matchup'                 " match enhancement for html
Plug 'kshenoy/vim-signature'                " bookmark sign
Plug 'thiagoalessio/rainbow_levels.vim'     " adjust background according to level

" tool
Plug 'ctrlpvim/ctrlp.vim'                   " Fuzzy search
Plug 'FelikZ/ctrlp-py-matcher'              " ctrlP matcher
" Plug 'jremmen/vim-ripgrep'
Plug 'miyase256/vim-ripgrep', {'branch': 'fix/remove-complete-from-RgRoot'}
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-startify'


" Theme
" Plug 'sickill/vim-monokai'
" Plug 'w0ng/vim-hybrid'
" Plug 'tomasr/molokai'
" Plug 'jacoborus/tender.vim'
" Plug 'cocopon/iceberg.vim'
" Plug 'wellsjo/wellsokai.vim'
" Plug 'chuling/ci_dark'

" testing
" =============================

Plug 'rescript-lang/vim-rescript'
Plug 'tpope/vim-sensible'
" Plug 'lifepillar/vim-solarized8'

" Plug 'nanotech/jellybeans.vim'
Plug 'wellsjo/wellsokai.vim'
Plug 'tibabit/vim-templates'

" archived
" =============================

call plug#end()
