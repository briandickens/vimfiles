"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Brian Dickens
" .vimrc
" Created July 6, 2011
" Last edited September 1, 2011
" Edited Further September 12, 2011
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" >= Important Things That Need To Be Done At The Start ------------------------- {{{

filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on

" }}}

" >= General Options ------------------------------------------------------------ {{{

set nocompatible " Not vi compatible
syntax on
set modelines=0 " prevents some security exploits
set backspace=indent,eol,start
let mapleader=","
set showcmd
set showmatch
set vb " blink screen instead of use bell
set ch=2 " set command line height to two lines

set cursorline " Make the cursor more visible!
set relativenumber " Set line numbers to be relative instead of absolute
" suppress warning about file not being saved when switching unsaved buffer to background.

set hidden

" Make the 'cw' and like commands put a $ at the end instead of just deleting
" the text and replacing it
set cpoptions=B$

" Show the current mode
set showmode

" When page starts to scroll, keep cursor 4 above the bottom and 4 below tb,sve
" top
set scrolloff=4
set history=1000
set undoreload=10000
set autowrite
set shiftround

" Save when losing focus
au FocusLost * :wa

" Resize splits when the window is resized
au VimResized * exe "normal! \<c-w>="

" Various VIM file stuff {{{
set nobackup " Don't make backup files
set noswapfile " Don't make .swp files
set undofile " Enable undofiles (store edit history for file)
set undodir=$HOME/vimfiles/undo
" }}}

" >= Status Line {{{
set laststatus=2
" set statusline=%F%m%r%h%w\ [FMT=%{&ff}]\ [TYP=%Y]\ Line:%l/%L[%p%%]\ Col:%v\ Buf:#%n
set statusline=\                               " Space for padding on left side.
set statusline+=%<                              " Truncate on the left side of text if too long.
set statusline+=%f                              " File name (tail)

" set statusline+=%#warningmsg#                   " Highlight the following as a warning.

set statusline+=%h                              " Help flag [help]
set statusline+=%r                              " Readonly Flag
set statusline+=%m                              " Modified Flag

" set statusline+=%*                              " Reset highlighting.

set statusline+=%=                              " Right align

" File format, encoding and type. Ex: (unix/utf-8/python)
set statusline+=(
set statusline+=%{&ff}                        " Format (unix/DOS).
set statusline+=/
set statusline+=%{strlen(&fenc)?&fenc:&enc}   " Encoding (utf-8).
set statusline+=/
set statusline+=%{&ft}                        " Type (python).
set statusline+=)

set statusline+=\ (line\ %l\/%L,\ col\ %03c)\  
" }}}

" >= Tab Settings {{{
set tabstop=4 " Set tabs to 4 spaces
set shiftwidth=4 " < and > keys indent/unindent 4 spaces
set shiftround " use multiple of shiftwidth when indenting with '<' and '>'
set softtabstop=4 " Treats 4 spaces as one tab
set expandtab " Inserts 4 spaces with the tab key
set smarttab " Use 'shiftwidth' setting at start of lines
set autoindent " always set autoindenting on
set copyindent " copy previous indenting on autoindenting
set wrap
set textwidth=85
set formatoptions=qnr1
set colorcolumn=+1
" }}}

" Vim File Editing {{{
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
" }}}

" }}}

" >= File-type specific things -------------------------------------------------- {{{

" Django {{{
au BufNewFile,BufRead urls.py           setlocal nowrap
au BufNewFile,BufRead urls.py           normal! zR
au BufNewFile,BufRead dashboard.py      normal! zR
au BufNewFile,BufRead local_settings.py normal! zR

au BufNewFile,BufRead admin.py     setlocal filetype=python.django
au BufNewFile,BufRead urls.py      setlocal filetype=python.django
au BufNewFile,BufRead models.py    setlocal filetype=python.django
au BufNewFile,BufRead views.py     setlocal filetype=python.django
au BufNewFile,BufRead settings.py  setlocal filetype=python.django
au BufNewFile,BufRead settings.py  setlocal foldmethod=marker
au BufNewFile,BufRead forms.py     setlocal filetype=python.django
au BufNewFile,BufRead common_settings.py  setlocal filetype=python.django
au BufNewFile,BufRead common_settings.py  setlocal foldmethod=marker
" }}}

" HTML and HTMLDjango {{{
au BufNewFile,BufRead *.html setlocal filetype=htmldjango
au FileType html,jinja,htmldjango setlocal foldmethod=manual

" Use <localleader>f to fold the current tag.
au FileType html,jinja,htmldjango nnoremap <buffer> <localleader>f Vatzf

" Use Shift-Return to turn this:
"     <tag>|</tag>
"
" into this:
"     <tag>
"         |
"     </tag>
au FileType html,jinja,htmldjango nnoremap <buffer> <s-cr> vit<esc>a<cr><esc>vito<esc>i<cr><esc>

" Smarter pasting
au FileType html,jinja,htmldjango nnoremap <buffer> p :<C-U>YRPaste 'p'<CR>v`]=`]
au FileType html,jinja,htmldjango nnoremap <buffer> P :<C-U>YRPaste 'P'<CR>v`]=`]

" Django tags
au FileType jinja,htmldjango inoremap <buffer> <c-t> {%<space><space>%}<left><left><left>

" Django variables
au FileType jinja,htmldjango inoremap <buffer> <c-f> {{<space><space>}}<left><left><left>
" }}}

" Markdown {{{
au BufNewFile,BufRead *.m*down setlocal filetype=markdown

" Use <localleader>1/2/3 to add headings.
au Filetype markdown nnoremap <buffer> <localleader>1 yypVr=
au Filetype markdown nnoremap <buffer> <localleader>2 yypVr-
au Filetype markdown nnoremap <buffer> <localleader>3 I### <ESC>
" }}}

" Python {{{
au Filetype python noremap  <buffer> <localleader>rr :RopeRename<CR>
au Filetype python vnoremap <buffer> <localleader>rm :RopeExtractMethod<CR>
au Filetype python noremap  <buffer> <localleader>ri :RopeOrganizeImports<CR>
au FileType python setlocal omnifunc=pythoncomplete#Complete
set foldmethod=marker
set commentstring=\ #\ %s
" }}}

" Vim {{{
au FileType vim setlocal foldmethod=marker
au FileType help setlocal textwidth=78
au BufWinEnter *.txt if &ft == 'help' | wincmd L | endif
" }}}

" }}}

" >= Searching and Movement ----------------------------------------------------- {{{

" Window Navigation {{{
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <silent> <leader>s8 :vertical resize 83<CR>
noremap <silent> <leader>cj :wincmd j<CR>:close<CR>
noremap <silent> <leader>ck :wincmd k<CR>:close<CR>
noremap <silent> <leader>ch :wincmd h<CR>:close<CR>
noremap <silent> <leader>cl :wincmd l<CR>:close<CR>
noremap <silent> <leader>cc :close<CR>
noremap <silent> <leader>cw :cclose<CR>
noremap <silent> <C-7> <C-W>>
noremap <silent> <C-8> <C-W>+
noremap <silent> <C-9> <C-W>-
noremap <silent> <C-0> <C-W><
" }}}

" Use sane regexes
nnoremap / /\v
vnoremap / /\v

set ignorecase " search is case sensitive unless
set smartcase " one or more characters are upprcase
set incsearch
set showmatch
set hlsearch
" Use ,<space> to clear search hihlighting
nnoremap <leader><space> :noh<cr>
" Use <tab> to move between matched parens / brackets / etc
" nnoremap <tab> %
" vnoremap <tab> %

" Make D behave
nnoremap D d$

"Keep search matches in the middle of the screen
nnoremap n nzzzv
nnoremap N Nzzzv

" Don't move on *
nnoremap * *<c-o>

" Same when jumping around
nnoremap g; g;zz
nnoremap g, g,zz

" Easier to type and standard behavior is dumb
nnoremap H ^
nnoremap L $

" }}}

" >= Code Folding ----------------------------------------------------------------{{{

set foldlevelstart=0

" Space to toggle folds.
nnoremap <Space> za
vnoremap <Space> za

" Make zO recursively open whatever top level fold we're in, no matter where the
" cursor happens to be.
nnoremap zO zCzO

" Use ,z to "focus" the current fold.
nnoremap <leader>z zMzvzz

function! MyFoldText() " {{{
let line = getline(v:foldstart)

let nucolwidth = &fdc + &number * &numberwidth
let windowwidth = winwidth(0) - nucolwidth - 3
let foldedlinecount = v:foldend - v:foldstart

" expand tabs into spaces
let onetab = strpart('          ', 0, &tabstop)
let line = substitute(line, '\t', onetab, 'g')

let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . '…' . ' '
endfunction " }}}
set foldtext=MyFoldText()
" }}}

" >= Plugin Functions ------------------------------------------------------------{{{

" MiniBufExplorer {{{
let g:miniBufExplMapCTabSwitchBufs = 1
map <leader>b :MiniBufExplorer<CR>
map <leader>bc :CMiniBufExplorer<CR>
map <leader>bu :UMiniBufExplorer<CR>
map <leader>bt :TMiniBufExplorer<CR>
" }}}

" gundo {{{
nnoremap <F5> :GundoToggle<CR>
" }}}

" Wild Menu {{{
set wildmenu
set wildmode=list:longest
" set wildmode=full " Make file completeion behave more like bash
set wildignore=*.swp,*.bak,*.pyc,*.class
" }}}

" NERDTree {{{
map <F2> :NERDTreeToggle<CR>
" }}}

" Syntastic {{{
let g:syntastic_enable_signs = 1
let g:syntastic_disabled_filetypes = ['html']
let g:syntastic_stl_format = '[%E{Error 1/%e: line %fe}%B{. }%W{Warning 1/%w: line %fw}]'
" }}}

" }}}

" >= Fix various key stupidity ---------------------------------------------------{{{

" Fix cursor control {{{
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
" }}}

" Disable F1 {{{
vnoremap <F1> <ESC>
nnoremap <F1> <ESC>
inoremap <F1> <ESC>
" }}}

" Some custom mappings {{{
" map ; to : to avoid havign to hold shift.
nnoremap ; :
" clear out trailing whitespace
nnoremap <leader>w :%s/\s\+$//<cr>:let @/=''<CR>
" put vim into paste mode.
nmap <silent> <leader>p :set invpaste<CR>:set paste?<CR>
" }}}

" }}}

" >= Session Saving --------------------------------------------------------------{{{

autocmd VimEnter * call LoadSession()
autocmd VimLeave * call SaveSession()

" Session Saving Functions {{{
function! SaveSession()
    execute 'mksession! $VIM\vimfiles\sessions\session.vim'
endfunction
function! LoadSession()
    if argc() == 0
        execute 'source $VIM\vimfiles\sessions\session.vim'
    endif
endfunction
" }}}

" }}}

" >= Convenience Mapping ---------------------------------------------------------{{{
 
" Filetype switching {{{
nnoremap _hd :set ft=htmldgango<CR>
nnoremap _jt :set ft=htmljinja<CR>
nnoremap _py :set ft=python.django<CR>
" }}}

" Indent Guides {{{
let g:indentguides_state = 0
function! IndentGuides() " {{{
    if g:indentguides_state = 0
        let g:indentguides_state = 0
        2match None
    else
        let g:indentguides_state = 1
        execute '2match IndentGuides /\%(\_^\s*\)\@<=\%(\%'.(0*&sw+1).'v\|\%'.(1*&sw+1).'v\|\%'.(2*&sw+1).'v\|\%'.(3*&sw+1).'v\|\%'.(4*&sw+1).'v\|\%'.(5*&sw+1).'v\|\%'.(6*&sw+1).'v\|\%'.(7*&sw+1).'v\)\s/'
    endif
endfunction " }}}
nnoremap <leader>i :call IndentGuides()<cr>
" }}}

" }}}

" >= GUI Settings ----------------------------------------------------------------{{{

if has("gui_running")
    " gVim specific
    set gfn=Consolas:h10
    set columns=180
    set lines=60
    set guioptions=acg
    set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175
    set mousehide " Hide mouse while typing
    colorscheme wombat
    set background=dark
else
    set background=dark
    colorscheme slate
endif

" }}}
