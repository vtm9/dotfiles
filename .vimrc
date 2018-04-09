let g:python_host_prog='/usr/bin/python3'
let mapleader = " "
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" Autoinstall vim-plug {{{
if empty(glob('~/.nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif
" }}}

set nocompatible

let $PATH = $PATH . ':' . expand("~/.local/bin")

call plug#begin('~/.nvim/plugged')

Plug 'vtm9/vim-pry'
Plug 'vtm9/vim-interpolation'
Plug 'vtm9/vim-dispatch'
let g:dispatch_quickfix_height = 90

let g:dispatch_compilers = {'elixir': 'exunit'}


Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-db'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-rbenv'
Plug 'tpope/rbenv-ctags'
Plug 'tpope/vim-bundler', { 'for': 'ruby' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'tpope/vim-rake'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-liquid'
Plug 'tpope/vim-jdaddy'
Plug 'tpope/vim-ragtag'
" {{{
let g:ragtag_global_maps = 1
" }}}

Plug 'ntpeters/vim-better-whitespace'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'hashivim/vim-terraform'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
nnoremap <silent> L :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {
      \ 'php': ['php', expand('~/.nvim/plugged/php-language-server/bin/php-language-server.php')],
      \ 'javascript': ['node', expand('~/.nvim/plugged/javascript-typescript-langserver/lib/language-server-stdio.js')],
      \ 'javascript.jsx': ['node', expand('~/.nvim/plugged/javascript-typescript-langserver/lib/language-server-stdio.js')],
      \ 'ruby': ['language_server-ruby'],
      \ }

Plug 'roxma/nvim-completion-manager'
Plug 'Shougo/echodoc.vim'
Plug 'godlygeek/tabular'

Plug 'christoomey/vim-tmux-navigator'
Plug 'jgdavey/tslime.vim'
Plug 'pbrisbin/vim-mkdir'
Plug 'christoomey/vim-run-interactive'
Plug 'vim-airline/vim-airline'
"{{{
  " Show airline with single file
  set laststatus=2
  " Use powerline font
  let g:airline_powerline_fonts = 1
  " Enable tabline
  " let g:airline#extensions#tabline#enabled = 1
"}}}
Plug 'airblade/vim-gitgutter'
Plug 'terryma/vim-multiple-cursors'
Plug 'wincent/ferret'
" {{{
let g:FerretExecutable='ag,rg'
let g:FerretQFOptions=0
nmap <Leader>/ <Plug>(FerretAck)
nmap <Leader>z <Plug>(FerretAckWord)
nmap <Leader>x <Plug>(FerretAcks)
vmap <silent>z :call FerretSearchVisualSelection()<CR>
function! FerretSearchVisualSelection() range
  let old_reg = getreg('"')
  let old_regtype = getregtype('"')
  let old_clipboard = &clipboard
  set clipboard&
  normal! ""gvy
  let selection = getreg('"')
  call setreg('"', old_reg, old_regtype)
  let &clipboard = old_clipboard
  execute 'Ack' selection
endfunction

" }}}
"
Plug 'farmergreg/vim-lastplace'
Plug 'airblade/vim-rooter'
" {{{
let g:rooter_patterns = ['Rakefile', 'mix.exs', '.git/']
" }}}

Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }

Plug 'kristijanhusak/vim-carbon-now-sh'
Plug 'stephpy/vim-yaml', { 'for': 'yaml' }
" Plug 'digitalrounin/vim-yaml-folds'
" Plug 'Einenlum/yaml-revealer', { 'for': 'yaml' }
" Plug 'vim-utils/vim-ruby-fold'
Plug 'chrisbra/csv.vim', { 'for': 'csv' }
Plug 'ekalinin/Dockerfile.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'digitaltoad/vim-pug', { 'for': 'pug' }
Plug 'slim-template/vim-slim', { 'for': ['slim', 'slime'] }
Plug 'gaogao1030/vim-skim', { 'for': ['skim'] }

" Plug 'elixir-lang/vim-elixir'
Plug 'elixir-editors/vim-elixir', { 'for': 'elixir' }
Plug 'c-brenn/phoenix.vim', { 'for': 'elixir' }
Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }
Plug 'mhinz/vim-mix-format', { 'for': 'elixir' }
" {{{
nnoremap <silent> <Leader>m :MixFormat<CR>
" }}}
Plug 'jimenezrick/vimerl', { 'for': 'erlang' }
" {{{
let erlang_show_errors = 0
" }}}
Plug 'honza/vim-snippets'

" Plug 'felixfbecker/php-language-server', { 'for': 'php', 'do': 'composer install && composer run-script parse-stubs'}
Plug 'jwalton512/vim-blade', { 'for': 'php' }
Plug '2072/PHP-Indenting-for-VIm', { 'for': 'php' }
Plug 'StanAngeloff/php.vim', { 'for': 'php' }
Plug 'rhysd/vim-clang-format'

" Javascript
Plug 'sourcegraph/javascript-typescript-langserver', {'do': 'npm install && npm run build'}
Plug 'elzr/vim-json'
Plug 'pangloss/vim-javascript'
" Plug 'isRuslan/vim-es6'
Plug 'mitermayer/vim-prettier', {
      \ 'do': 'yarn install',
      \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss'] }
Plug 'chemzqm/vim-jsx-improve', { 'for': 'javascript' }
Plug 'moll/vim-node'
Plug 'othree/javascript-libraries-syntax.vim'
" {{{
let g:used_javascript_libs = 'jquery'
" }}}

Plug 'mattn/emmet-vim'
" {{{
let g:user_emmet_expandabbr_key = '<C-e>'
" }}}
Plug 'othree/html5.vim'
Plug 'Valloric/MatchTagAlways'

Plug 'othree/yajs.vim'

Plug 'nathanaelkane/vim-indent-guides'

Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'shime/vim-livedown', { 'for': 'markdown' }
Plug 'reedes/vim-lexical'
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toc_autofit = 1
let g:lexical#spelllang = ['en_us', 'ru_ru']

" Clojure
Plug 'guns/vim-clojure-static', { 'for': 'clojure' }
Plug 'tpope/vim-leiningen', { 'for': 'clojure' }
Plug 'tpope/vim-classpath', { 'for': 'clojure' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'venantius/vim-eastwood', { 'for': 'clojure' }

Plug 'vim-scripts/paredit.vim', { 'for': ['clojure', 'scheme', 'racket'] }
Plug 'wlangstroth/vim-racket', { 'for': 'racket' }

Plug 'ap/vim-css-color'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" {{{
let g:deoplete#enable_at_startup = 1
let g:deoplete#disable_auto_complete = 1

inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : deoplete#mappings#manual_complete()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" }}}
Plug 'junegunn/limelight.vim'
" {{{
let g:limelight_default_coefficient = 0.7
let g:limelight_conceal_ctermfg = 238
nmap <silent> gl :Limelight!!<CR>
xmap gl <Plug>(Limelight)
" }}}

Plug 'scrooloose/nerdtree'
Plug 'vtm9/nerdtree-ag'
" Plug 'tyok/nerdtree-ack'
" Plug 'ryanoasis/vim-devicons'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
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
" let g:fzf_nvim_statusline = 0 " disable statusline overwriting
let g:fzf_tags_command = 'ripper-tags -R'

nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>; :Rg!<Space>
nnoremap <silent> <Leader>T :BTags<CR>
nnoremap <silent> <Leader>t :Tags<CR>
nnoremap <silent> <Leader>h :History<CR>
nnoremap <silent> <C-p> :GFiles<CR>
nnoremap <silent> <C-f> :Files<CR>
nnoremap <Leader>w :FZF -m ~/Projects<Space><CR>
nnoremap <silent> L :call SearchWordWithAg()<CR>
vnoremap <silent> L :call SearchVisualSelectionWithAg()<CR>
nnoremap <silent> <Leader>gl :Commits<CR>
nnoremap <silent> <Leader>ga :BCommits<CR>

imap <C-x><C-f> <plug>(fzf-complete-file-ag)
imap <C-x><C-l> <plug>(fzf-complete-line)

command! -bang -nargs=? -complete=dir GFiles
      \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=? -complete=dir Files
      \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

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

Plug 'w0rp/ale'
"{{{
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 0
let g:ale_set_highlights = 0
let g:ale_completion_enabled = 1
let g:ale_php_phpcs_standard = 'PSR2'
let g:airline#extensions#ale#enabled = 1
let g:ale_linters = {
      \   'markdown': [],
      \   'javascript': ['eslint', 'flow'],
      \}
let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'ruby': ['rubocop'],
\}
" Move between linting errors
nnoremap ]r :ALENextWrap<CR>
nnoremap [r :ALEPreviousWrap<CR>
nnoremap <Leader>l :ALEFix<CR>
"}}}


Plug 'janko-m/vim-test'
  let test#strategy = "dispatch"
  nnoremap <silent> <Leader>tf :TestFile<CR>
  nnoremap <silent> <Leader>tn :TestNearest<CR>
  nnoremap <silent> <Leader>ts :TestSuite<CR>
  nnoremap <silent> <Leader>tl :TestLast<CR>
  nnoremap <silent> <Leader>tv :TestVisit<CR>

Plug 'nanotech/jellybeans.vim'
Plug 'editorconfig/editorconfig-vim'

call plug#end()

colorscheme jellybeans

set cursorline     " highlight current line
set colorcolumn=120 " highlight column
" highlight! ColorColumn ctermbg=233 guibg=#131313

" Various columns
" highlight! SignColumn ctermbg=233 guibg=#0D0D0D
" highlight! FoldColumn ctermbg=233 guibg=#0D0D0D

" Syntastic
" highlight SyntasticErrorSign guifg=black guibg=#E01600 ctermfg=16 ctermbg=160
" highlight SyntasticErrorLine guibg=#0D0D0D ctermbg=232
" highlight SyntasticWarningSign guifg=black guibg=#FFED26 ctermfg=16 ctermbg=11
" highlight SyntasticWargningLine guibg=#171717
" highlight SyntasticStyleWarningSign guifg=black guibg=#bcbcbc ctermfg=16 ctermbg=250
" highlight SyntasticStyleErrorSign guifg=black guibg=#ff8700 ctermfg=16 ctermbg=208

" Language-specific
highlight! link elixirAtom rubySymbol
" set t_Co=256
" set t_ut=
" set background=dark

" set guifont=Source\ Code\ Pro\ Regular\ 12
" set guioptions-=rL
" set anti enc=utf-8
" set guifont=Source\ Code\ Pro\ 12

" Automatically removing all trailing whitespace
" autocmd BufWritePre * :%s/\s\+$//e

set backspace=2   " Backspace deletes like most programs in insert mode
set history=500
set ruler         " show the cursor position all the time
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line

set tabstop=2
set shiftround

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Use one space, not two, after punctuation.
set nojoinspaces

" Autocomplete with dictionary words when spell check is on
set complete+=kspell

" Always use vertical diffs
set diffopt+=vertical

set fileformat=unix

set textwidth=120

function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
  let myUndoDir = expand(vimDir . '/undodir')
  " Create dirs
  call system('mkdir ' . vimDir)
  call system('mkdir ' . myUndoDir)
  let &undodir = myUndoDir
  set undofile
endif

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

nnoremap <silent> <F7> :read !git rev-parse --abbrev-ref HEAD<CR>kddi[<ESC>A] -<Space>
nnoremap <silent> <Leader>= :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader>0 :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Leader>9 :exe "vertical resize " . (winwidth(0) * 2/3)<CR>
nnoremap <silent> <Leader>8 :set invnumber<CR>
nnoremap <silent> <Leader>7 :call NumberToggle()<cr>

nnoremap <silent> <Leader>gb :Gblame<CR>
nnoremap <silent> <Leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff origin/HEAD<CR>
nnoremap <silent> <Leader>v :Eview<CR>
nnoremap <silent> <Leader>c :Econtroller<CR>
nnoremap <silent> <Leader>e :A<CR>
nnoremap <silent> <Leader>r :R<CR>

nmap <Leader>o o<Esc>k
nmap <Leader>O O<Esc>j
nmap <silent> cp "_ciw<C-R>"<Esc>

inoremap <silent> <C-p> <Esc>

" Edit .vimrc
map <leader>vl :vsp $MYVIMRC<CR>
map <leader>vr :source $MYVIMRC<CR>

nnoremap ff :normal! gg=G``<CR>
cmap w!! %!sudo tee > /dev/null %

set shortmess=atI
set foldlevelstart=99
if has('mouse')
  set mouse=a
endif
" set lazyredraw
" set ttyfast

set splitbelow
set splitright

set hidden
set nofoldenable
set wrap
set linebreak
set number
set ignorecase
set smartcase

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowritebackup
set nowb
set noswapfile

set showcmd       " display incomplete commands
set autowrite     " Automatically :write before running commands
set expandtab
set softtabstop=2
set shiftwidth=2

set cmdheight=2
set scrolloff=3
set inccommand=nosplit

""" Basics Keymaps

" Turn off linewise keys. Normally, the `j' and `k' keys move the cursor down one entire line. with line wrapping on, this can cause the cursor to actually skip a few lines on the screen because it's moving from line N to line N+1 in the file. I want this to act more visually -- I want `down' to mean the next line on the screen
nmap j gj
nmap k gk

augroup common
  autocmd BufEnter * EnableStripWhitespaceOnSave
augroup END

augroup filetypedetect
  " autocmd!
  " au BufEnter *.markdown,*.mkd,*.md setl wrap tw=79
  " au BufEnter *.json setl ft=javascript
  " au BufEnter *.coffee setl sw=2 expandtab
  " au BufEnter *.py setl ts=4 sw=4 sts=4
  autocmd BufEnter *.php setlocal ts=4 sw=4 sts=4
  autocmd BufNewFile,BufRead *.slim setlocal filetype=slim
  autocmd BufNewFile,BufRead *.slime setlocal filetype=slim
  " au BufEnter *.js setl ts=2 sw=2 sts=2
  " au BufEnter *.html setl ts=4 sw=4 sts=4
  " au BufEnter *.tex setl wrap tw=79 fo=tcqor
  " au BufEnter *.[ch] setl cindent
  " au BufEnter *.[ch]pp setl cindent
  " au BufEnter Makefile setl ts=4 sts=4 sw=4 noet list
  " au BufEnter *.es6 setf javascript
augroup END


