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
Plug 'tpope/vim-rails'
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
Plug 'nanotech/jellybeans.vim'
Plug 'vim-airline/vim-airline'
Plug 'terryma/vim-multiple-cursors'

Plug 'isRuslan/vim-es6'
Plug 'elzr/vim-json'
Plug 'vim-ruby/vim-ruby'
Plug 'p0deje/vim-ruby-interpolation'
Plug 'stephpy/vim-yaml'
Plug 'chrisbra/csv.vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'slim-template/vim-slim'
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

  nnoremap <silent> <leader>a :Buffers<CR>
  nnoremap <silent> <leader>; :BLines<CR>
  nnoremap <silent> <leader>o :BTags<CR>
  nnoremap <silent> <leader>O :Tags<CR>
  nnoremap <silent> <leader>? :History<CR>

  nnoremap <silent> K :call SearchWordWithAg()<CR>
  vnoremap <silent> K :call SearchVisualSelectionWithAg()<CR>
  nnoremap <silent> <leader>gl :Commits<CR>
  nnoremap <silent> <leader>ga :BCommits<CR>
  nnoremap <silent> <leader>ft :Filetypes<CR>

  imap <C-x><C-f> <plug>(fzf-complete-file-ag)
  imap <C-x><C-l> <plug>(fzf-complete-line)

  function! SearchWordWithAg()
    execute 'Ag' expand('<cword>')
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
    execute 'Ag' selection
  endfunction
" }}}

Plug 'rhysd/clever-f.vim'
" {{{
  let g:clever_f_smart_case = 1
" }}}

Plug 'junegunn/vim-easy-align'
" {{{
  let g:easy_align_ignore_comment = 0 " align comments
  vnoremap <silent> <Enter> :EasyAlign<cr>
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

Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'nelstrom/vim-textobj-rubyblock'

Plug 'scrooloose/syntastic'
" {{{
  let g:syntastic_enable_signs          = 1
  let g:syntastic_enable_highlighting   = 1
  let g:syntastic_cpp_check_header      = 1
  let g:syntastic_enable_balloons       = 1
  let g:syntastic_echo_current_error    = 1
  let g:syntastic_check_on_wq           = 0
  let g:syntastic_error_symbol          = '✘'
  let g:syntastic_warning_symbol        = '!'
  let g:syntastic_style_error_symbol    = ':('
  let g:syntastic_style_warning_symbol  = ':('
  let g:syntastic_elixir_checkers       = ['elixir']
  let g:syntastic_javascript_checkers   = ['eslint']
  let g:syntastic_enable_elixir_checker = 0

  let g:syntastic_ruby_checkers     = ['rubocop', 'mri']
  let g:syntastic_ruby_rubocop_exec = '~/.rbenv/shims/rubocop'
  let g:syntastic_ruby_rubocop_args = '--display-cop-names --rails'

  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*

  function! RubocopAutoCorrection()
    let save_pos = getpos(".")
    echo 'Starting rubocop autocorrection...'
    cexpr system('rubocop -D -R -f emacs -a ' . expand(@%))
    edit
    SyntasticCheck rubocop
    call setpos(".", save_pos)
    " copen
  endfunction

  augroup syntasticCustomCheckers
    autocmd!
    autocmd FileType ruby nnoremap <leader>` :SyntasticCheck rubocop<CR>
    autocmd FileType ruby nnoremap <leader>! :call RubocopAutoCorrection()<CR>
  augroup END
" }}}

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
  nnoremap <silent> <leader>rr :TestFile<CR>
  nnoremap <silent> <leader>rf :TestNearest<CR>
  nnoremap <silent> <leader>rs :TestSuite<CR>
  nnoremap <silent> <leader>ra :TestLast<CR>
  nnoremap <silent> <leader>ro :TestVisit<CR>
" }}}

call plug#end()
filetype plugin indent on

colorscheme jellybeans

set cursorline     " highlight current line
set colorcolumn=80 " highlight column
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
set guifont=Source\ Code\ Pro\ 12

" Automatically removing all trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
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
" set colorcolumn=+1

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Y behave like D or C
nnoremap Y y$

" Select all text
noremap vA ggVG

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
nmap <leader>d :call pry#insert()<CR>
nmap <Leader>p :set paste<CR><esc>"+p: set nopaste<cr>
nmap <Leader>P <CR>o<CR> :set paste<CR><esc>"+p: set nopaste<cr>
vmap <leader>y "+y

vmap <C-j> :m '>+1<CR>gv=gv
vmap <C-k> :m '<-2<CR>gv=gv
" vim-rspec mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
" map <Leader>s :call RunNearestSpec()<CR>
" map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
"let g:rspec_command = 'call Send_to_Tmux("spring rspec {spec}\n")'
"let g:rspec_command = Dispatch spring rspec {spec}\n"
let g:rspec_command = ':w | !clear && spring rspec -I . {spec}'
nmap <silent> <Leader>t :TestNearest<CR>
nmap <silent> <Leader>T :TestFile<CR>
nmap <silent> <Leader>a :TestSuite<CR>
" nmap <silent> <Leader>l :TestLast<CR>
nmap <silent> <Leader>g :TestVisit<CR>
let test#strategy = "dispatch"
let test#ruby#rspec#options = {
  \ 'nearest': '--backtrace',
  \ 'file':    '--format documentation',
  \ 'suite':   '--tag ~slow',
  \}

" Allows you to enter sudo pass and save the file
" when you forgot to open your file with sudo
cmap w!! %!sudo tee > /dev/null %
" Run commands that require an interactive shell
nnoremap <Leader>r :RunInInteractiveShell<space>

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

nnoremap <silent> <Leader>= :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader>0 :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Leader>9 :exe "vertical resize " . (winwidth(0) * 2/3)<CR>
nmap <silent> <Leader>8  :set invnumber<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>bb :Buffers<CR>
nnoremap <silent> <leader>ct :!ctags --recurse . `bundle show --paths`<CR>
nnoremap <silent> <C-p> :GFiles<CR>
nnoremap <silent> <F7> :read !git rev-parse --abbrev-ref HEAD<CR>kddi[<ESC>A]<Space>
nnoremap \ :Ack\
nnoremap <silent> <leader>v :Eview<CR>
nnoremap <silent> <leader>c :Econtroller<CR>

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'ag --column --line-number --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)
let g:ackprg = 'ag --vimgrep'
