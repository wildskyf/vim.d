" ========================================
" ============== auto run ================
" ========================================

" testing =========

" speedup jsx syntax
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
au BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.typescriptreact
" au BufNewFile *.tsx,*.jsx r ~/.vim.d/templates/component.tsx

" stable ==========

" syntax highlight setup
" au BufNewFile,BufRead *.tsx set filetype=typescript.tsx
" au BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx

au FileType scss setl iskeyword+=@-@


" au BufNewFile,BufRead *.tpl set filetype=html

" limit char number for git commit
au Filetype gitcommit setlocal spell textwidth=72

" remove redundant whitespace
au BufWritePre * StripWhitespace

" auto toggle LineNumber between absolute or relative
" autocmd FocusLost   * :call SetNumber()
" autocmd FocusGained * :call SetRelativeNumber()
" autocmd InsertEnter * :call SetNumber()
" autocmd InsertLeave * :call SetRelativeNumber()

" restore the position last I open the file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" switch the shape of the cursor
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
autocmd InsertEnter * set cursorline
autocmd InsertLeave * set nocursorline

let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

set timeoutlen=150

" auto save session
autocmd VimLeave * mksession! ~/.vim_auto_session.vim
" autocmd VimEnter * source ~/.vim_auto_session.vim
