" ========================================
" ========== package config ==============
" ========================================

" CtrlP
let g:ctrlp_user_command = {
	\ 'types': {
		\ 1: ['.git', 'cd %s && git ls-files --exclude-standard --others --cached'],
		\ 2: ['.hg', 'hg --cwd %s locate -I .'],
	\ },
	\ 'fallback': 'find %s -type f'
\ }

" Setup some default ignores
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
	\ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}
" use relative path
let g:ctrlp_working_path_mode = 'ra'

" appearance
let g:lightline = {
	\ 'colorscheme': 'wombat',
	\ 'separator': { 'left': '', 'right': '' },
	\ 'subseparator': { 'left': '', 'right': '' },
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
    \             [ 'filename' ],
    \             [ 'bufferline' ]
    \           ],
    \   'right': [ [ 'lineinfo' ],
    \              [ 'percent' ],
    \              [ 'fileformat', 'fileencoding', 'filetype' ]
    \           ],
	\ },
    \ 'tabline': {
    \   'left': [ [ 'tabs' ] ],
	\   'right': [ [] ]
    \ },
	\ 'component': {
	\   'bufferline': '%{bufferline#refresh_status()}%{g:bufferline_status_info.before . g:bufferline_status_info.current . g:bufferline_status_info.after}',
	\ }
\ }

