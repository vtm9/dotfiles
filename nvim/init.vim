lua require('init')
nmap <silent> cp "_ciw<C-R>"<Esc>
nmap <silent> cP :set opfunc=ChangePaste<CR>g@
function! ChangePaste(type, ...)
  if a:0  " Invoked from Visual mode, use '< and '> marks.
    silent exe "normal! `<" . a:type . "`>\"_c" . @"
  elseif a:type == 'line'
    silent exe "normal! '[V']\"_c" . @"
  elseif a:type == 'block'
    silent exe "normal! `[\<C-V>`]\"_c" . @"
  else
    silent exe "normal! `[v`]\"_c" . @"
  endif
endfunction

vnoremap <silent> * :<C-U>
      \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
      \gvy/<C-R><C-R>=substitute(
      \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
      \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
      \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
      \gvy?<C-R><C-R>=substitute(
      \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
      \gV:call setreg('"', old_reg, old_regtype)<CR>

let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:strip_whitespace_confirm=0
let g:switch_mapping = '\'

autocmd VimEnter * Neotree
