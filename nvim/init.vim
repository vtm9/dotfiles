lua require('init')

function! VisualSelection() abort "{{{
	try
		let a_save = @a
		silent! normal! "ay
		" silent! normal! gv"ay
		return substitute(escape(@a, '\/'), '\n', '\\n', 'g')
	finally
		let @a = a_save
	endtry
endfunction "}}}



function! SearchWordWithAg()
  execute 'Rg!' expand('<cword>')
endfunction

function! SearchVisualSelectionWithAg() range
  let old_reg = getreg('"')
  let old_regtype = getregtype('"')
  let old_clipboard = &clipboard
  set clipboard&
  normal! ""gvy
  let selection = getreg('"')
  call setreg('"', old_reg, old_regtype)
  let &clipboard = old_clipboard
  execute 'Rg!' selection
endfunction
command! -bang -nargs=* Rg
      \ call fzf#vim#grep(
      \   'rg --column --line-number --no-heading --color=always --fixed-strings --smart-case --hidden --follow --glob "!.git/*" '.shellescape(<q-args>), 1,
      \   <bang>0 ? fzf#vim#with_preview('up:60%')
      \           : fzf#vim#with_preview('right:50%:hidden', '?'),
      \   <bang>0)

command! -nargs=0 Format :call CocAction('format')

nnoremap <Leader>l :Format<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>; :Rg!<space>
nnoremap <silent> <Leader>h :History<CR>
nnoremap <silent> <C-p> :GFiles<CR>
nnoremap <silent> <C-q> :Files<CR>
nnoremap <silent> L :call SearchWordWithAg()<CR>
nnoremap <silent> <Leader>gl :Commits<CR>
nnoremap <silent> <Leader>ga :BCommits<CR>

vnoremap <silent> L :call SearchVisualSelectionWithAg()<CR>

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>gr <Plug>(coc-rename)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


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

let g:switch_mapping = '\'
