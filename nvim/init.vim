lua require('init')

function! SearchWordWithAg()
  execute 'Rg!' expand('<cword>')
endfunction

vnoremap <silent> L "zy:Telescope grep_string default_text=<C-r>z<cr>

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


call textobj#user#plugin('entire', {
\      '-': {
\        'select-a': 'ae',  'select-a-function': 'textobj#entire#select_a',
\        'select-i': 'ie',  'select-i-function': 'textobj#entire#select_i'
\      }
\    })


nnoremap <silent> <Leader>= :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader>0 :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Leader>9 :exe "vertical resize " . (winwidth(0) * 2/3)<CR>
nnoremap <silent> <Leader>8 :set invnumber<CR>

nnoremap <silent> <Leader>gb :Git blame<CR>
nnoremap <silent> <Leader>gs :Git status<CR>
nnoremap <silent> <leader>gd :Git diff origin/HEAD<CR>
nnoremap <silent> <Leader>gv :GV!<CR>
nnoremap <silent> <Leader>e :A<CR>
nnoremap <silent> <Leader>w :R<CR>

nnoremap <C-n> :NvimTreeFindFile<CR>
nmap <silent> <Leader><Leader> :NvimTreeToggle<CR>

let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:strip_whitespace_confirm=0
