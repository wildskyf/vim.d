" ========================================
" ============== packages ================
" ========================================

set nocompatible
filetype off			" required!

call plug#begin('~/.vim/plug_dir')


Plug 'bling/vim-bufferline'             " Buffer list on statusbar

Plug 'ctrlpvim/ctrlp.vim'               " Fuzzy search
Plug 'FelikZ/ctrlp-py-matcher'          " ctrlP matcher
Plug 'editorconfig/editorconfig-vim'    " Editorconfig is awesome
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'ntpeters/vim-better-whitespace'   " Get rid of redundant whitespace
Plug 'tomtom/tlib_vim'
Plug 'vim-scripts/matchit.zip'
Plug 'kshenoy/vim-signature'            " bookmark sign

Plug 'jremmen/vim-ripgrep'

Plug 'ap/vim-css-color'
" Plug 'cakebaker/scss-syntax.vim', {'for': 'scss'}
" Plug 'shmargum/vim-sass-colors', {'for': ['css', 'scss'] }

Plug 'mattn/emmet-vim'                  " Web developer must have

Plug 'mustache/vim-mustache-handlebars', {'for': 'mustache'}
" Plug 'mxw/vim-jsx'

Plug 'pangloss/vim-javascript'          " Js lib

" Plug 'tpope/vim-markdown'

" Theme
Plug 'w0ng/vim-hybrid'

" Stil In Test
" Plug 'severin-lemaignan/vim-minimap'
" Plug 'jiangmiao/auto-pairs'

" Plug 'ternjs/tern_for_vim'
" Plug 'majutsushi/tagbar'

" surround

" archive
Plug 'nikvdp/ejs-syntax'
" Plug 'briancollins/vim-jst'           " for jst, ejs
" Plug 'wellsjo/wellsokai.vim'          " Theme
" Plug 'sickill/vim-monokai'
" Plug 'dracula/vim'

Plug 'rust-lang/rust.vim', {'for': 'rust'}
Plug 'timonv/vim-cargo', {'for': 'rust'}

" Plug 'fatih/vim-go'
" Plug 'w0rp/ale'


call plug#end()
