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
" au FileType javascript,python,php,xml,yaml :RainbowLevelsOn

highlight RainbowLevel0 ctermbg=231 guibg=#080808
highlight RainbowLevel1 ctermbg=233 guibg=#121212
highlight RainbowLevel2 ctermbg=235 guibg=#1c1c1c
highlight RainbowLevel3 ctermbg=237 guibg=#262626
highlight RainbowLevel4 ctermbg=239 guibg=#303030
highlight RainbowLevel5 ctermbg=241 guibg=#3a3a3a
highlight RainbowLevel6 ctermbg=243 guibg=#444444
highlight RainbowLevel7 ctermbg=245 guibg=#4e4e4e
highlight RainbowLevel8 ctermbg=247 guibg=#585858

let b:beancount_root = '~/.accounting/main.bean'
autocmd FileType beancount inoremap . .<C-O>:AlignCommodity<CR>
autocmd FileType beancount inoremap <Tab> <c-x><c-o>
