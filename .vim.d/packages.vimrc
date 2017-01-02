" ========================================
" ============== packages ================
" ========================================

set nocompatible
filetype off			" required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'                   " import Vundle manage Vundle

Plugin 'ap/vim-css-color'
Plugin 'bling/vim-bufferline'					" Buffer list on statusbar
Plugin 'briancollins/vim-jst'
Plugin 'ctrlpvim/ctrlp.vim'						" Fuzzy search
Plugin 'editorconfig/editorconfig-vim'			" Editorconfig is awesome
Plugin 'itchyny/lightline.vim'					" Statusbar beautify
Plugin 'mattn/emmet-vim'						" Web developer must have
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'ntpeters/vim-better-whitespace'			" Get rid of redundant whitespace
Plugin 'pangloss/vim-javascript'				" Js lib
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-markdown'
Plugin 'kshenoy/vim-signature'
Plugin 'wellsjo/wellsokai.vim'					" Theme

" Stil In Test

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

" optional:
Plugin 'honza/vim-snippets'

call vundle#end()
filetype plugin indent on

