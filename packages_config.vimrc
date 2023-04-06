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
" au FileType html,tpl,xml,yaml :RainbowLevelsOn

hi! link RainbowLevel0 Comment
"hi! RainbowLevel1 guibg=none guifg=none
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

" Emmet
let g:user_emmet_settings = {
\  'html' : {
\    'quote_char': "'",
\  },
\}

" Coc
let g:coc_global_extensions = ['coc-tsserver']
let g:coc_user_config = {}
let g:coc_user_config['coc.preferences.jumpCommand'] = 'tabe'

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

" vim-template
let g:tmpl_search_paths = ['~/.vim.d/templates']
let g:tmpl_auto_initialize = 1

