" ========================================
" ========== package config ==============
" ========================================


" STABLE ==================

" matchit
" add config in $VIMRUNTIME/ftplugin/html.vim

" ctag x tagbar
let g:tagbar_width = 55
let g:tagbar_autofocus = 1

" CtrlP
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

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
	\   'left' : [ ['mode', 'paste'], ['filename'] ],
	\   'right': [ [ 'time' ],
	\              [ 'percent' ],
	\              [ 'lineinfo', 'filetype' ]
	\           ],
	\ },
  \ 'filename': '%t',
	\ 'tabline': {
	\   'left': [ [ 'tabs' ] ],
	\   'right': [ [] ]
	\ },
	\ 'component': {
	\   'time': "%5(%{strftime('%H:%M')}%)"
	\ }
\ }

" ALE
let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = { 'javascript': ['eslint'], 'css': ['stylelint']}
let g:ale_fixers = { 'javascript': ['eslint'], 'css': ['stylelint']}
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
