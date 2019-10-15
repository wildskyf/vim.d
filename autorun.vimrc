" ========================================
" ============== auto run ================
" ========================================

" stable ==========

" syntax highlight setup
au BufNewFile,BufRead *.tsx set filetype=typescript.tsx

" limit char number for git commit
autocmd Filetype gitcommit setlocal spell textwidth=72

" redundant whitespace bye bye
autocmd BufWritePre * StripWhitespace
"
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


" fcitx integrate
" let g:input_toggle = 1
" function! Fcitx2en()
"    let s:input_status = system("fcitx-remote")
"    if s:input_status == 2
"       let g:input_toggle = 1
"       let l:a = system("fcitx-remote -c")
"    endif
" endfunction

set timeoutlen=150
" autocmd InsertLeave * call Fcitx2en()


" auto save session
autocmd VimLeave * mksession! ~/.vim_auto_session.vim
" autocmd VimEnter * source ~/.vim_auto_session.vim
