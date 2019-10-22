" ========================================
" ========== package config ==============
" ========================================

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
let g:ctrlp_working_path_mode = 'ra'

" RainbowLevels
au FileType html,tpl,xml,yaml :RainbowLevelsOn

hi! link RainbowLevel0 Comment
hi! RainbowLevel1 guibg=none guifg=none
hi! link RainbowLevel2 Normal
hi! link RainbowLevel3 Identifier
hi! link RainbowLevel4 Function
hi! link RainbowLevel5 String
hi! link RainbowLevel6 Statement
hi! link RainbowLevel7 Type
hi! link RainbowLevel8 PreProc

" Beancount
let b:beancount_root = '~/.accounting/main.bean'
autocmd FileType beancount inoremap . .<C-O>:AlignCommodity<CR>
autocmd FileType beancount inoremap <Tab> <c-x><c-o>

" polyglot
let g:polyglot_disabled = ['typescript']

" Ale
" keep the sign gutter open
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'

" show infos in status line
let g:airline#extensions#ale#enabled = 1
let g:ale_completion_tsserver_autoimport = 1
let g:ale_linters = {
\   'javascript': ['standard']
\}

let g:ale_fixers = {'javascript': ['standard']}
" let g:ale_lint_on_save = 1
" let g:ale_fix_on_save = 1
