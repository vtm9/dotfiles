let g:python_host_prog='/usr/bin/python2'
let mapleader = " "

" Autoinstall vim-plug {{{
if empty(glob('~/.nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif
" }}}

set nocompatible
filetype off

let $PATH = $PATH . ':' . expand("~/.local/bin")

call plug#begin('~/.nvim/plugged')

Plug 'vtm9/vim-pry'

Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rbenv'
Plug 'tpope/vim-rails'
" {{{
  set includeexpr=true
" }}}
Plug 'tpope/vim-rake'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-liquid'
Plug 'tpope/vim-jdaddy'
Plug 'tpope/vim-ragtag'
" {{{
  let g:ragtag_global_maps = 1
" }}}

Plug 'christoomey/vim-tmux-navigator'
Plug 'jgdavey/tslime.vim'
Plug 'Valloric/MatchTagAlways'
Plug 'pbrisbin/vim-mkdir'
Plug 'christoomey/vim-run-interactive'
Plug 'vim-airline/vim-airline'
Plug 'terryma/vim-multiple-cursors'
Plug 'wincent/ferret'
Plug 'farmergreg/vim-lastplace'
" {{{
let g:FerretExecutable='ag,rg'
" }}}

Plug 'airblade/vim-rooter'

" Plug 'sheerun/vim-polyglot'
Plug 'isRuslan/vim-es6'
Plug 'elzr/vim-json'
Plug 'vim-ruby/vim-ruby'
Plug 'p0deje/vim-ruby-interpolation'
Plug 'stephpy/vim-yaml'
Plug 'digitalrounin/vim-yaml-folds'
" Plug 'vim-utils/vim-ruby-fold'
Plug 'Einenlum/yaml-revealer'
Plug 'chrisbra/csv.vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'slim-template/vim-slim'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'othree/html5.vim'
Plug 'othree/yajs.vim'
Plug 'othree/javascript-libraries-syntax.vim'
" {{{
  let g:used_javascript_libs = 'jquery'
" }}}
Plug 'gavocanov/vim-js-indent'
Plug 'ap/vim-css-color'
Plug 'jimenezrick/vimerl'
" {{{
  let erlang_show_errors = 0
" }}}
Plug 'elixir-lang/vim-elixir'

Plug 'junegunn/limelight.vim'
" {{{
  let g:limelight_default_coefficient = 0.7
  let g:limelight_conceal_ctermfg = 238
  nmap <silent> gl :Limelight!!<CR>
  xmap gl <Plug>(Limelight)
" }}}

Plug 'scrooloose/nerdtree'
Plug 'tyok/nerdtree-ack'
Plug 'Xuyuanp/nerdtree-git-plugin'
" {{{
  let g:NERDTreeMinimalUI = 1
  let g:NERDTreeWinSize = 31
  let g:NERDTreeChDirMode = 2
  let g:NERDTreeAutoDeleteBuffer = 1
  let g:NERDTreeShowBookmarks = 1
  let g:NERDTreeCascadeOpenSingleChildDir = 1

  nmap <silent> <Leader><Leader> :NERDTreeToggle<CR>
  nmap <silent> <Leader>\ :NERDTreeFind<CR>
" }}}

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" {{{
  let g:fzf_nvim_statusline = 0 " disable statusline overwriting
  let g:fzf_tags_command = 'ripper-tags -R'

  nnoremap <silent> <Leader>b :Buffers<CR>
  nnoremap <silent> <Leader>; :Rg<Space>
  nnoremap <silent> <Leader>T :BTags<CR>
  nnoremap <silent> <Leader>t :Tags<CR>
  nnoremap <silent> <Leader>h :History<CR>
  nnoremap <silent> <C-p> :GFiles<CR>

  nnoremap <silent> K :call SearchWordWithAg()<CR>
  vnoremap <silent> K :call SearchVisualSelectionWithAg()<CR>
  nnoremap <silent> <Leader>gl :Commits<CR>
  nnoremap <silent> <Leader>ga :BCommits<CR>

  imap <C-x><C-f> <plug>(fzf-complete-file-ag)
  imap <C-x><C-l> <plug>(fzf-complete-line)

  function! SearchWordWithAg()
    execute 'Rg' expand('<cword>')
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
    execute 'Rg' selection
  endfunction
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)
  " command! -bang -nargs=* Rg call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
" }}}

Plug 'rhysd/clever-f.vim'
" {{{
  let g:clever_f_smart_case = 1
" }}}

Plug 'Raimondi/delimitMate'
" {{{
  let delimitMate_expand_cr = 2
  let delimitMate_expand_space = 1 " {|} => { | }
" }}}

Plug 'AndrewRadev/splitjoin.vim'
Plug 'AndrewRadev/switch.vim'
" {{{
  let g:switch_mapping = '\'
" }}}

Plug 'mattn/vim-textobj-url'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'thinca/vim-textobj-comment'
Plug 'andyl/vim-textobj-elixir'
Plug 'nelstrom/vim-textobj-rubyblock'

Plug 'neomake/neomake'
" {{{
autocmd! BufWritePost * Neomake
let g:neomake_open_list=0
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_jsx_enabled_makers = ['eslint']
let g:neomake_markdown_enabled_makers = ['alex', 'markdownlint', 'proselint']
let g:neomake_elixir_enabled_makers = ['mix', 'credo']
let g:neomake_ruby_enabled_makers = ['mri', 'rubocop']
function! RubocopAutoCorrection()
  exe "w"
  silent exe "!bundle exec rubocop -a -R % &> /dev/null"
  silent exe "e %"
  silent exe "Neomake"
endfun
  autocmd FileType ruby nnoremap <Leader>! :call RubocopAutoCorrection()<CR>
" }}}
" Plug 'scrooloose/syntastic'
" " {{{
"   let g:syntastic_enable_signs          = 1
"   let g:syntastic_enable_highlighting   = 1
"   let g:syntastic_cpp_check_header      = 1
"   let g:syntastic_enable_balloons       = 1
"   let g:syntastic_echo_current_error    = 1
"   let g:syntastic_check_on_wq           = 0
"   let g:syntastic_error_symbol          = '✘'
"   let g:syntastic_warning_symbol        = '!'
"   let g:syntastic_style_error_symbol    = ':('
"   let g:syntastic_style_warning_symbol  = ':('
"   let g:syntastic_elixir_checkers       = ['elixir']
"   let g:syntastic_javascript_checkers   = ['eslint']
"   let g:syntastic_enable_elixir_checker = 0

"   let g:syntastic_ruby_checkers     = ['rubocop', 'mri']
"   let g:syntastic_ruby_rubocop_exec = '~/.rbenv/shims/rubocop'
"   let g:syntastic_ruby_rubocop_args = '--display-cop-names --rails'

"   set statusline+=%#warningmsg#
"   set statusline+=%{SyntasticStatuslineFlag()}
"   set statusline+=%*

"   function! RubocopAutoCorrection()
"     let save_pos = getpos(".")
"     echo 'Starting rubocop autocorrection...'
"     cexpr system('rubocop -D -R -f emacs -a ' . expand(@%))
"     edit
"     SyntasticCheck rubocop
"     call setpos(".", save_pos)
"     " copen
"   endfunction

"   augroup syntasticCustomCheckers
"     autocmd!
"     autocmd FileType ruby nnoremap <Leader>` :SyntasticCheck rubocop<CR>
"     autocmd FileType ruby nnoremap <Leader>! :call RubocopAutoCorrection()<CR>
"   augroup END
" " }}}

Plug 'mattn/emmet-vim'
" {{{
  let g:user_emmet_expandabbr_key = '<c-e>'
" }}}

Plug 'lyokha/vim-xkbswitch'
" {{{
  let g:XkbSwitchEnabled = 1
  let g:XkbSwitchLib = '/usr/local/lib/libxkbswitch.so'
  let g:XkbSwitchNLayout = 'us'
  let g:XkbSwitchILayout = 'us'

  function! RestoreKeyboardLayout(key)
    call system("xkb-switch -s 'us'")
    execute 'normal! ' . a:key
  endfunction

  nnoremap <silent> р :call RestoreKeyboardLayout('h')<CR>
  nnoremap <silent> о :call RestoreKeyboardLayout('j')<CR>
  nnoremap <silent> л :call RestoreKeyboardLayout('k')<CR>
  nnoremap <silent> д :call RestoreKeyboardLayout('l')<CR>
" }}}

Plug 'janko-m/vim-test'
" {{{
  function! TerminalSplitStrategy(cmd) abort
    tabnew | call termopen(a:cmd) | startinsert
  endfunction
  " let g:test#custom_strategies = get(g:, 'test#custom_strategies', {})
  " let g:test#custom_strategies.terminal_split = function('TerminalSplitStrategy')
  " let test#strategy = 'terminal_split'
  let test#strategy = "dispatch"
" let g:test#preserve_screen = 1
  nnoremap <silent> <Leader>rr :TestFile<CR>
  nnoremap <silent> <Leader>rf :TestNearest<CR>
  nnoremap <silent> <Leader>rs :TestSuite<CR>
  nnoremap <silent> <Leader>ra :TestLast<CR>
  nnoremap <silent> <Leader>ro :TestVisit<CR>
" }}}

Plug 'nanotech/jellybeans.vim'
call plug#end()
filetype plugin indent on

colorscheme jellybeans

set cursorline     " highlight current line
set colorcolumn=120 " highlight column
highlight! ColorColumn ctermbg=233 guibg=#131313

" Various columns
highlight! SignColumn ctermbg=233 guibg=#0D0D0D
highlight! FoldColumn ctermbg=233 guibg=#0D0D0D

" Syntastic
highlight SyntasticErrorSign guifg=black guibg=#E01600 ctermfg=16 ctermbg=160
highlight SyntasticErrorLine guibg=#0D0D0D ctermbg=232
highlight SyntasticWarningSign guifg=black guibg=#FFED26 ctermfg=16 ctermbg=11
highlight SyntasticWargningLine guibg=#171717
highlight SyntasticStyleWarningSign guifg=black guibg=#bcbcbc ctermfg=16 ctermbg=250
highlight SyntasticStyleErrorSign guifg=black guibg=#ff8700 ctermfg=16 ctermbg=208

" Language-specific
highlight! link elixirAtom rubySymbol
set t_Co=256
set t_ut=
set background=dark

" set guifont=Source\ Code\ Pro\ Regular\ 12
" set guioptions-=rL
" set anti enc=utf-8
set guifont=Source\ Code\ Pro\ 12

" Automatically removing all trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=500
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands

set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Use one space, not two, after punctuation.
set nojoinspaces

" Autocomplete with dictionary words when spell check is on
set complete+=kspell

" Always use vertical diffs
set diffopt+=vertical

set fileformat=unix
" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

set textwidth=120

function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

noremap <Leader>s :update<CR>
noremap <Leader>S :wq<CR>
noremap <Leader>q :quit<CR>
noremap <Leader>Q :quit!<CR>
noremap <Leader>e :edit!<CR>
map Q @q

nmap <Leader>d :call pry#insert()<CR>
nmap <Leader>p :set paste<CR><esc>"+p: set nopaste<cr>
nmap <Leader>P :set paste<CR><esc>o<Esc>"+p: set nopaste<cr>
vmap <Leader>y "+y
nnoremap Y y$
vmap <C-j> :m '>+1<CR>gv=gv
vmap <C-k> :m '<-2<CR>gv=gv
nmap <silent> <C-_> gcc
vmap <silent> <C-_> gc
nnoremap <Leader>f :%s///g<Left><Left>
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

nnoremap <silent> <F7> :read !git rev-parse --abbrev-ref HEAD<CR>kddi[<ESC>A] -<Space>
nnoremap <silent> <Leader>= :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader>0 :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Leader>9 :exe "vertical resize " . (winwidth(0) * 2/3)<CR>
nnoremap <silent> <Leader>8 :set invnumber<CR>
nnoremap <silent> <Leader>7 :call NumberToggle()<cr>
nnoremap <silent> <Leader>1 :source $MYVIMRC <CR>

nnoremap <silent> <Leader>gb :Gblame<CR>
nnoremap <silent> <Leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <Leader>v :Eview<CR>
nnoremap <silent> <Leader>c :Econtroller<CR>
nnoremap <silent> <Leader>e :A<CR>
nnoremap <silent> <Leader>r :R<CR>

nmap <Leader>/ <Plug>(FerretAck)
nmap <Leader>z <Plug>(FerretAckWord)
nmap <Leader>x <Plug>(FerretAcks)
nmap <Leader>w :FZF -m ~/Projects<Space><CR>
nmap <Leader>l :Lines<CR>
nmap <Leader>o o<Esc>k
nmap <Leader>O O<Esc>j
nmap <silent> cp "_ciw<C-R>"<Esc>

set shortmess=a
set foldlevelstart=99
set mouse=a
