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

nnoremap <Leader>f :%s///g<Left><Left>

let g:rooter_patterns = ['Gemfile.lock', '.iex.exs' ]
let g:user_emmet_expandabbr_key = '<C-e>'

nnoremap <Leader>l :Format<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>; :Rg!<space>
nnoremap <silent> <Leader>h :History<CR>
nnoremap <silent> <C-p> :GFiles<CR>
nnoremap <silent> <C-q> :Files<CR>
nnoremap <silent> L :call SearchWordWithAg()<CR>
nnoremap <silent> <Leader>gl :Commits<CR>
nnoremap <silent> <Leader>ga :BCommits<CR>

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

nnoremap <silent> <Leader>gv :GV!<CR>

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)


vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

call textobj#user#plugin('entire', {
\      '-': {
\        'select-a': 'ae',  'select-a-function': 'textobj#entire#select_a',
\        'select-i': 'ie',  'select-i-function': 'textobj#entire#select_i'
\      }
\    })


nnoremap <silent> <F7> :read !git rev-parse --abbrev-ref HEAD<CR>kddi[<ESC>A] -<Space>
nnoremap <silent> <Leader>= :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader>0 :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Leader>9 :exe "vertical resize " . (winwidth(0) * 2/3)<CR>
nnoremap <silent> <Leader>8 :set invnumber<CR>
nnoremap <silent> <Leader>7 :call NumberToggle()<cr>

nnoremap <silent> <Leader>gb :Git blame<CR>
nnoremap <silent> <Leader>gs :Git status<CR>
nnoremap <silent> <leader>gd :Git diff origin/HEAD<CR>
nnoremap <silent> <Leader>gv :GV!<CR>
nnoremap <silent> <Leader>e :A<CR>
nnoremap <silent> <Leader>w :R<CR>

nnoremap <C-n> :NvimTreeFindFile<CR>
nmap <silent> <Leader><Leader> :NvimTreeToggle<CR>
