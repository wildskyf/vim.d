" ========================================
" ============== packages ================
" ========================================

set nocompatible
filetype off			" required!

call plug#begin('~/.vim/plug_dir')

Plug 'VundleVim/Vundle.vim'             " import Vundle manage Vundle

Plug 'ap/vim-css-color'
Plug 'bling/vim-bufferline'             " Buffer list on statusbar
" Plug 'briancollins/vim-jst'
Plug 'ctrlpvim/ctrlp.vim'               " Fuzzy search
Plug 'FelikZ/ctrlp-py-matcher'          " ctrlP matcher
Plug 'editorconfig/editorconfig-vim'    " Editorconfig is awesome
" Plug 'garbas/vim-snipmate'
" Plug 'honza/vim-snippets'
Plug 'itchyny/lightline.vim'            " Statusbar beautify
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'mattn/emmet-vim'                  " Web developer must have
Plug 'mustache/vim-mustache-handlebars'
Plug 'mxw/vim-jsx'
Plug 'ntpeters/vim-better-whitespace'   " Get rid of redundant whitespace
Plug 'pangloss/vim-javascript'          " Js lib
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-rails'
Plug 'vim-scripts/matchit.zip'
" Plug 'tpope/vim-markdown'
Plug 'kshenoy/vim-signature'            " bookmark sign
Plug 'kchmck/vim-coffee-script'
Plug 'rizzatti/dash.vim'
Plug 'rust-lang/rust.vim'

" Theme
" Plug 'dracula/vim'
" Plug 'sickill/vim-monokai'
Plug 'w0ng/vim-hybrid'


" Stil In Test
" Plug 'severin-lemaignan/vim-minimap'
" Plug 'jiangmiao/auto-pairs'

" Plug 'ternjs/tern_for_vim'
" Plug 'majutsushi/tagbar'

" archive
" Plug 'wellsjo/wellsokai.vim'          " Theme

Plug 'fatih/vim-go'
Plug 'w0rp/ale'


call plug#end()
