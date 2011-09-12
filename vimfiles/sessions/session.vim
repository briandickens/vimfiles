let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <S-Tab> =BackwardsSnippet()
inoremap <C-Tab> 	
inoremap <F1> 
inoremap <Right> <Nop>
inoremap <Left> <Nop>
inoremap <Down> <Nop>
inoremap <Up> <Nop>
map! <S-Insert> *
map rs :call RopeChangeSignature()
map ra/ :call RopeCodeAssist()
map rm :call RopeExtractMethod()
map rl :call RopeExtractVariable()
map rai :call RopeFindImplementations()
map raf :call RopeFindOccurrences()
map rnc :call RopeGenerateClass()
map rnf :call RopeGenerateFunction()
map rnm :call RopeGenerateModule()
map rnp :call RopeGeneratePackage()
map rnv :call RopeGenerateVariable()
map rag :call RopeGotoDefinition()
map ri :call RopeInline()
map rf :call RopeIntroduceFactory()
map raj :call RopeJumpToGlobal()
map ra? :call RopeLuckyAssist()
map r1p :call RopeModuleToPackage()
map rv :call RopeMove()
map r1v :call RopeMoveCurrentModule()
map ro :call RopeOrganizeImports()
map rr :call RopeRename()
map r1r :call RopeRenameCurrentModule()
map rx :call RopeRestructure()
map rac :call RopeShowCalltip()
map rad :call RopeShowDoc()
map ru :call RopeUseFunction()
map g :call RopeGotoDefinition()
map f :call RopeFindOccurrences()
map d :call RopeShowDoc()
map  h
vnoremap 	 %
nnoremap 	 %
map <NL> j
map  k
map  l
map pk :call RopeCloseProject()
map pnd :call RopeCreateDirectory()
map pnf :call RopeCreateFile()
map pnm :call RopeCreateModule()
map pnp :call RopeCreatePackage()
map pf :call RopeFindFile()
map p4f :call RopeFindFileOtherWindow()
map po :call RopeOpenProject()
map pc :call RopeProjectConfig()
map pr :call RopeRedo()
map pu :call RopeUndo()
snoremap  b<BS>
xmap  "*d
vnoremap   za
nnoremap   za
snoremap % b<BS>%
snoremap ' b<BS>'
map ,mq <Plug>MBEMarkCurrent
map ,mbt <Plug>TMiniBufExplorer
map ,mbu <Plug>UMiniBufExplorer
map ,mbc <Plug>CMiniBufExplorer
map ,mbe <Plug>MiniBufExplorer
map ,bt :TMiniBufExplorer
map ,bu :UMiniBufExplorer
map ,bc :CMiniBufExplorer
map ,b :MiniBufExplorer
nmap <silent> ,p :set invpaste:set paste?
nnoremap ,w :%s/\s\+$//:let @/=''
nmap <silent> ,sv :so $MYVIMRC
nmap <silent> ,ev :e $MYVIMRC
nnoremap ,  :noh
noremap <silent> ,cw :cclose
noremap <silent> ,cc :close
noremap <silent> ,cl :wincmd l:close
noremap <silent> ,ch :wincmd h:close
noremap <silent> ,ck :wincmd k:close
noremap <silent> ,cj :wincmd j:close
noremap <silent> ,s8 :vertical resize 83
nnoremap ,z zMzvzz
imap ¯ =RopeCodeAssistInsertMode()
nnoremap ; :
imap ¿ =RopeLuckyAssistInsertMode()
xmap S <Plug>VSurround
snoremap U b<BS>U
snoremap \ b<BS>\
snoremap ^ b<BS>^
snoremap ` b<BS>`
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
xmap gS <Plug>VgSurround
nmap gx <Plug>NetrwBrowseX
nnoremap j gj
nnoremap k gk
xmap s <Plug>Vsurround
nmap ys <Plug>Ysurround
nmap yS <Plug>YSurround
nmap yss <Plug>Yssurround
nmap ySs <Plug>YSsurround
nmap ySS <Plug>YSsurround
nnoremap zO zCzO
snoremap <Left> bi
snoremap <Right> a
snoremap <BS> b<BS>
snoremap <silent> <S-Tab> i<Right>=BackwardsSnippet()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
map <F2> :NERDTreeToggle
nnoremap <F1> 
vnoremap <F1> 
nnoremap <Right> <Nop>
nnoremap <Left> <Nop>
nnoremap <Down> <Nop>
nnoremap <Up> <Nop>
nnoremap <F5> :GundoToggle
noremap <silent> <C-0> <
noremap <silent> <C-9> -
noremap <silent> <C-8> +
noremap <silent> <C-7> >
vmap <C-Del> "*d
vmap <S-Del> "*d
vmap <C-Insert> "*y
vmap <S-Insert> "-d"*P
nmap <S-Insert> "*P
imap s <Plug>Isurround
imap S <Plug>ISurround
inoremap <silent> 	 =TriggerSnippet()
imap  <Plug>SuperTabForward
imap  <Plug>SuperTabBackward
inoremap <silent> 	 =ShowAvailableSnips()
imap  <Plug>Isurround
map ¯ :call RopeCodeAssist()
map ¿ :call RopeLuckyAssist()
let &cpo=s:cpo_save
unlet s:cpo_save
set paste
set autoindent
set autowrite
set background=dark
set backspace=indent,eol,start
set cmdheight=2
set copyindent
set cpoptions=B$
set noequalalways
set expandtab
set foldlevelstart=0
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo
set formatoptions=qnr1
set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175
set guifont=Consolas:h10
set guioptions=acg
set helplang=En
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set modelines=0
set runtimepath=N:\\vimfiles,C:\\Program\ Files\ (x86)\\Vim/vimfiles,C:\\Program\ Files\ (x86)\\Vim\\vimfiles\\bundle\\browserprint,C:\\Program\ Files\ (x86)\\Vim\\vimfiles\\bundle\\gundo,C:\\Program\ Files\ (x86)\\Vim\\vimfiles\\bundle\\minibufexpl,C:\\Program\ Files\ (x86)\\Vim\\vimfiles\\bundle\\nerdtree,C:\\Program\ Files\ (x86)\\Vim\\vimfiles\\bundle\\pydoc,C:\\Program\ Files\ (x86)\\Vim\\vimfiles\\bundle\\pyflakes-pathogen,C:\\Program\ Files\ (x86)\\Vim\\vimfiles\\bundle\\python_editing,C:\\Program\ Files\ (x86)\\Vim\\vimfiles\\bundle\\ropevim,C:\\Program\ Files\ (x86)\\Vim\\vimfiles\\bundle\\scrooloose-syntastic-4b690ba,C:\\Program\ Files\ (x86)\\Vim\\vimfiles\\bundle\\snipmate,C:\\Program\ Files\ (x86)\\Vim\\vimfiles\\bundle\\supertab,C:\\Program\ Files\ (x86)\\Vim\\vimfiles\\bundle\\surround,C:\\Program\ Files\ (x86)\\Vim\\vimfiles\\bundle\\vim-colors-solarized,C:\\Program\ Files\ (x86)\\Vim\\vim73,C:\\Program\ Files\ (x86)\\Vim\\vimfiles\\bundle\\snipmate\\after,C:\\Program\ Files\ (x86)\\Vim/vimfiles/after,N:\\vimfiles/after
set scrolloff=4
set shellslash
set shiftround
set shiftwidth=4
set showbreak=?
set showmatch
set smartcase
set smarttab
set softtabstop=4
set splitbelow
set splitright
set statusline=\ %<%F%r%m%=%#warningmsg#%{SyntasticStatuslineFlag()}%*(%{&ff}/%{strlen(&fenc)?&fenc:&enc}/%{&ft})\ (line\ %l/%L,\ col\ %03c)\ 
set noswapfile
set switchbuf=useopen
set tabstop=4
set textwidth=85
set undodir=N:/vimfiles/undo
set undofile
set updatetime=300
set visualbell
set wildignore=*.swp,*.bak,*.pyc,*.class
set wildmenu
set wildmode=list:longest
set window=58
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd C:\Windows\system32
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +55 C:/Program\ Files\ (x86)/Vim/_vimrc
badd +15 c:/PythonProjects/BladeWalker/src/bladewalker3.py
badd +1 /Program\ Files\ (x86)/Vim/vimfiles/bundle/surround/doc/surround.txt
badd +32 /Program\ Files\ (x86)/Vim/vimfiles/bundle/python_editing/python_editing.vim
args /Program\ Files\ (x86)/Vim/vimfiles/bundle/python_editing/python_editing.vim
edit /Program\ Files\ (x86)/Vim/vimfiles/bundle/python_editing/python_editing.vim
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
vnoremap <buffer> <silent> [" :exe "normal! gv"|call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
nnoremap <buffer> <silent> [" :call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
vnoremap <buffer> <silent> [] m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "bW")
nnoremap <buffer> <silent> [] m':call search('^\s*endf*\%[unction]\>', "bW")
vnoremap <buffer> <silent> [[ m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "bW")
nnoremap <buffer> <silent> [[ m':call search('^\s*fu\%[nction]\>', "bW")
vnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
vnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")
nnoremap <buffer> <silent> ][ m':call search('^\s*endf*\%[unction]\>', "W")
vnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")
nnoremap <buffer> <silent> ]] m':call search('^\s*fu\%[nction]\>', "W")
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=sO:\"\ -,mO:\"\ \ ,eO:\"\",:\"
setlocal commentstring=\"%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal copyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'vim'
setlocal filetype=vim
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=99
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=marker
setlocal foldminlines=1
setlocal foldnestmax=20
set foldtext=MyFoldText()
setlocal foldtext=MyFoldText()
setlocal formatexpr=
setlocal formatoptions=n1croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetVimIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,=end,=else,=cat,=fina,=END,0\\
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,#
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'vim'
setlocal syntax=vim
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=85
setlocal thesaurus=
setlocal undofile
setlocal winfixheight
setlocal winfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 81 - ((51 * winheight(0) + 28) / 56)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
81
normal! 038l
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
