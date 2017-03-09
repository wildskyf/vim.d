" ========================================
" ============== packages ================
" ========================================

set nocompatible
filetype off			" required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'             " import Vundle manage Vundle

Plugin 'ap/vim-css-color'
Plugin 'bling/vim-bufferline'             " Buffer list on statusbar
Plugin 'briancollins/vim-jst'
Plugin 'ctrlpvim/ctrlp.vim'               " Fuzzy search
Plugin 'FelikZ/ctrlp-py-matcher'          " ctrlP matcher
Plugin 'editorconfig/editorconfig-vim'    " Editorconfig is awesome
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'itchyny/lightline.vim'            " Statusbar beautify
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'mattn/emmet-vim'                  " Web developer must have
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'ntpeters/vim-better-whitespace'   " Get rid of redundant whitespace
Plugin 'pangloss/vim-javascript'          " Js lib
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-markdown'
Plugin 'kshenoy/vim-signature'
Plugin 'sickill/vim-monokai'              " Theme

" Stil In Test
Plugin 'jiangmiao/auto-pairs'

Plugin 'ternjs/tern_for_vim'
Plugin 'majutsushi/tagbar'

" archive
" Plugin 'wellsjo/wellsokai.vim'          " Theme

call vundle#end()
filetype plugin indent on




" https://gist.github.com/hotchpotch/719707
"
function! Ggrep(arg)
  setlocal grepprg=git\ grep\ --no-color\ -n\ $*
  silent execute ':grep '.a:arg
  setlocal grepprg=git\ --no-pager\ submodule\ --quiet\ foreach\ 'git\ grep\ --full-name\ -n\ --no-color\ $*\ ;true'
  silent execute ':grepadd '.a:arg
  silent cwin
  redraw!
endfunction

command! -nargs=1 -complete=buffer Gg call Ggrep(<q-args>)
command! -nargs=1 -complete=buffer Ggrep call Ggrep(<q-args>)
nnoremap <unique> gG :exec ':silent Ggrep ' . expand('<cword>')<CR>

