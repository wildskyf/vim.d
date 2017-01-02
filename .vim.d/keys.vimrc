" ========================================
" ================  Map  =================
" ========================================

" original
"    F2           : save session
"    F3           : load session
"    F9           : switch paste mode
"    F10          : switch number on & off
"    F12          : switch number re & abs
" leader (<SPACE>)
"    p f          : ctrlP
"    <tab>        : next buffer

let mapleader = "\<Space>"
let g:ctrlp_map = '<leader>pf'

nmap ZZ :x<cr>
noremap  <TAB> >>
noremap  <S-TAB> <<
noremap  <Home> ^
noremap  <F2> :mksession! ~/.vim_session <CR>
noremap  <F3> :source ~/.vim_session <CR>
nnoremap <leader><Tab> :bnext<CR>
nnoremap <leader><S-Tab> :bprevious<CR>
nnoremap ; :
nnoremap <F10> :call NumberToggle()<CR>
nnoremap <F12> :call NumberToggleRe()<CR>
nnoremap j gj
nnoremap k gk
nnoremap <UP> gk
nnoremap <DOWN> gj
inoremap <Home> <ESC>^i

:set pastetoggle=<F9>

:command WQ wq
:command Wq wq
:command W w
:command Q q
:command Copythis call CopyThis()

function! NumberToggleRe()
	if(&relativenumber == 1)
		call SetNumber()
	else
		call SetRelativeNumber()
	endif
endfunc

function! SetNumber()
	set norelativenumber
	set number
endfunc

function! SetRelativeNumber()
	set relativenumber
	set nonumber
endfunc

function! NumberToggle()
	if(&relativenumber == 1 || &number == 1)
		set nonumber
		set norelativenumber
	else
		call SetNumber()
	endif
endfunc

function! CopyThis()
	%w !pbcopy
endfunc



