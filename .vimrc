" Author: Wildsky / wildskyf+gh (at) gmail.com
" Blog: http://blog.wildsky.cc
" Filename: .vimrc
" Modified: 2019-05-28

"	Tips:
"		Use command-line-window with q:
"		Use search history with q/

source $HOME/.vim.d/packages.vimrc
source $HOME/.vim.d/packages_config.vimrc
source $HOME/.vim.d/general.vimrc
source $HOME/.vim.d/autorun.vimrc
source $HOME/.vim.d/keys.vimrc
" source $HOME/.vim.d/test_script.vimrc

set background=dark
colorscheme hybrid
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette.

highlight Conceal cterm=NONE ctermbg=17 ctermfg=darkblue
