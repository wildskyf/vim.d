" ========================================
" ================  Map  =================
" ========================================

" original
"    F2           : save session
"    F3           : load session
"    F8           : toggle tagbar
"    F9           : Run Rust Program
"    F10          : switch number on & off
"    F12          : switch number re & abs

" leader (<SPACE>)
"    <tab>        : next buffer

let mapleader = "\<Space>"
" let g:ctrlp_map = '<leader>pf'
let g:minimap_toggle='<F5>'
let g:user_emmet_leader_key='<c-m>'

nmap ZZ :x<cr>
map <leader>t :RainbowLevelsToggle<cr>

" if has('macunix') " for MAC:
vmap '' :w !pbcopy<CR><CR>
" elseif has('unix') " for Linux
"   vmap '' :w !xclip -i -sel c<CR><CR>
" endif

noremap  <Home> ^
nnoremap ; :
nnoremap <leader><Tab>   :bnext<CR>
nnoremap <leader><S-Tab> :bprevious<CR>
nnoremap <leader><up>       :5winc +<CR>
nnoremap <leader><down>       :5winc -<CR>
nnoremap <leader><left>       :5winc <<CR>
nnoremap <leader><right>      :5winc ><CR>
nnoremap <leader>r            :Rg<space>
nnoremap <leader>f            :CocFix<CR>
nnoremap <leader>c            :Ic<CR>
nnoremap <F2> :mksession! ~/.vim_manual_session.vim <CR>
nnoremap <F3> :source ~/.vim_manual_session.vim <CR>
nnoremap <F4> :source ~/.vim_auto_session.vim <CR>
nnoremap <F9> :CargoRun<CR>
nnoremap <F10> :call NumberToggle()<CR>
nnoremap <F12> :call NumberToggleRe()<CR>
inoremap <Home> <ESC>^i

map k gk
map j gj
map <UP> gk
map <DOWN> gj

" move cursor faster
map <C-k>  5gk
map <C-j>  5gj
map <C-h>  b
map <C-l>  e
map <C-UP> 5gk
map <C-DOWN> 5gj
map <C-LEFT> b
map <C-RIGHT> e

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


" move line up/down
nnoremap <S-DOWN> :m .+1<CR>==
nnoremap <S-UP> :m .-2<CR>==
inoremap <S-DOWN> <Esc>:m .+1<CR>==gi
inoremap <S-UP> <Esc>:m .-2<CR>==gi
vnoremap <S-DOWN> :m '>+1<CR>gv=gv
vnoremap <S-UP> :m '<-2<CR>gv=gv

" ===========================
" ======== TESTING ==========
" ===========================

nmap <silent> gd <Plug>(coc-definition)
