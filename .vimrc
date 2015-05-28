"for fish shell
if $SHELL =~ 'fish'
   set shell='/bin/zsh'
endif
" x-------------------------------------x
" | GAGES VIMRC                         |
" x-------------------------------------x


" Begin using the Plugin Management system called 'Plug'
call plug#begin('~/.vim/plugged')

" -----------
" SYNTAX
" anything that's language spesific
" -----------
"Go
Plug 'fatih/vim-go', { 'for' : 'go' }
"let g:go_fmt_command = 'goimports'

" Less
Plug 'groenewege/vim-less', { 'for' : 'less' }

" HTML / CSS / PHP
Plug 'vim-scripts/php.vim-html-enhanced'
Plug '2072/PHP-Indenting-for-VIm'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'mattn/emmet-vim'
" EMMET settings
let g:user_emmet_mode='a'    "enable all function in all mode.

let g:user_emmet_install_global = 0

autocmd FileType html,css,php,blade EmmetInstall
imap <D-e> <c-y>,
imap <C-e> <c-y>,
map <leader>e <c-y>
map <leader>y <c-y>

Plug 'bitfyre/vim-indent-html'

" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'lukaszb/vim-web-indent'

" JavaScript related ones
Plug 'claco/jasmine.vim'
Plug 'digitaltoad/vim-jade'
Plug 'jcf/vim-latex'
Plug 'wavded/vim-stylus', { 'for' : 'stylus' }
Plug 'marijnh/tern_for_vim'

" JSX support for react.js
Plug 'mxw/vim-jsx'
Plug 'jsx/jsx.vim'

" Coffee script
Plug 'kchmck/vim-coffee-script', { 'for' : 'coffee' }
autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

"Markdown
Plug 'jtratner/vim-flavored-markdown', { 'for' : 'ghmarkdown' }
augroup markdown
   au!
   au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

"Haskell
Plug 'vim-scripts/Superior-Haskell-Interaction-Mode-SHIM', { 'for' : 'haskell' }
Plug 'dag/vim2hs'

"Io
Plug 'andreimaxim/vim-io', { 'for' : 'io' }

"Scala 
Plug 'derekwyatt/vim-scala', { 'for' : 'scala' }

"Livescript
Plug 'ninegrid/vim-livescript', { 'for' : 'ls' }

" LIVESCRIPT STUFF
" auto livescript make
au BufWritePost *.ls silent LiveScriptMake!

" two space indentation
au BufNewFile,BufReadPost *.ls setl shiftwidth=2 expandtab

"fold on indentation
au BufNewFile,BufReadPost *.ls setl foldmethod=indent nofoldenable

"Ruby
Plug 'vim-ruby/vim-ruby', { 'for' : 'ruby' }

"Mercury
Plug 'khorser/vim-mercury', { 'for' : 'mercury' }
Plug 'vim-scripts/mercury.vim', { 'for' : 'mercury' }

"Lua
Plug 'xolox/vim-lua-inspect'
Plug 'xolox/vim-misc'

"OCaml
"Plug 'def-lkb/merlin', { 'for' : 'ocaml' }
" Merlin
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
Plug 'jpalardy/vim-slime', { 'for' : 'ocaml' }
Plug 'OCamlPro/ocp-indent', { 'for' : 'ocaml' }


"Elixir
Plug 'elixir-lang/vim-elixir'

" Syntastic enable elixir
let g:syntastic_enable_elixir_checker = 1

"Clojure
Plug 'tpope/vim-fireplace'
Plug 'vim-scripts/paredit.vim'
autocmd BufRead,BufNewFile *.edn set filetype=clojure


Plug 'terryma/vim-multiple-cursors'


"mappings for multiple cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-f>'
let g:multi_cursor_prev_key='<C-d>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" ---------------------------------------
" Vim
" anything to extend vim's funcitonality
" ---------------------------------------


Plug 'tpope/vim-sleuth'


Plug 'dag/vim-fish'

"Plug 'maxbrunsfeld/vim-yankstack'
"Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/unite.vim'


Plug 'Shougo/vimproc.vim'
Plug 'SirVer/ultisnips'
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

Plug 'honza/vim-snippets'
Plug 'Syntastic'
Plug 'godlygeek/tabular'
Plug 'ivalkeen/nerdtree-execute'
Plug 'surround.vim'
Plug 'tComment'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
Plug 'jceb/vim-orgmode', { 'for' : 'org' }

" Themes
Plug 'junegunn/seoul256.vim'
Plug 'tomasr/molokai'
Plug 'justgage/mustang-vim'
Plug 'vim-scripts/xoria256.vim'
Plug 'endel/vim-github-colorscheme'

" -----------
" Apps
" anything that is a sort of application that lives inside of vim
" -----------
Plug 'vimwiki/vimwiki'
map <Leader>w :VimwikiIndex<cr>
Plug 'justgage/tagbar', { 'on' : 'TagbarToggle' }
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/Gundo'
Plug 'vim-scripts/LanguageTool'
Plug 'farseer90718/vim-taskwarrior'
Plug 'ervandew/supertab'

call plug#end()


" --------------------------
" Essential Vimrc settings:
" -------------------------

set hidden

nnoremap ' `

nnoremap ` '

set undofile
set undodir=~/Vimrc/undo,~/.vim,~/.tmp,~/tmp,/var/tmp,/tmp
set backup
set backupdir=~/Vimrc/backup,~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/Vimrc/swp,~/.tmp,~/tmp,/var/tmp,/tmp

let mapleader = ","


" makes it so I can match tags with % sign
runtime macros/matchit.vim

set title


" Intuitive backspacing in insert mode
set backspace=indent,eol,start

syntax on

set regexpengine=1

"CTRL-BACKSPACE to delete a word in insert mode (doesn't work right now?)
imap <C-BS> <C-W>

filetype on
filetype plugin on
filetype indent on

set smartindent
set tabstop=3
set shiftwidth=3
set expandtab

set guioptions-=m "Gits rid of the menus
set guioptions-=T "Gets rid of the Toolbar 
set guioptions-=r "Get's rid of the scroll bars

set hlsearch 
set ignorecase
set smartcase 
set number 

set wildmenu
set nowrap
set incsearch

" make 'press ENTER' messages die
set shortmess=atI

set ruler " puts a bar on the bottom with info

nmap > >>
nmap < <<

" No timeouts for my slow fingers
set notimeout 
set ttimeout


set background=dark

set t_Co=256 | colorscheme mustang

set laststatus=1

com! W :w

" Easy pane switching
nnoremap <space> <C-W><C-W>
nnoremap <s-space> <C-W>p

set nowrap

set foldmethod=syntax
"
" show lines around cursor
set scrolloff=3

imap jk <Esc>

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" be even faster!
inoremap jj <Esc>:w<CR>
"inoremap ;; <End>;<Esc>:w<CR>
nnoremap ; :

"This makes moving around in wrapped lines better
map j gj
map k gk

" this makes it so that when you have {|} and push enter
" it expands nicely
" Best mapping EVER
inoremap {<cr> {<cr>}<c-o><s-o>
inoremap [<cr> [<cr>]<c-o><s-o>
inoremap (<cr> (<cr>)<c-o><s-o>

inoremap ;w<cr> <esc>:w<cr>
inoremap :w<cr> <esc>:w<cr>

" END  ----

noremap <c-l> :TagbarToggle<CR>

" No sure what this is for
" runtime ftplugin/man.vim

"adds a new command that edits your vimrc via :Vimrc
com! Vimrc :e ~/Vimrc/.vimrc

" all my leader commands
map ,v :vsplit<cr>
map ,s :split<cr>
map ,V :Vimrc<cr>
map ,S :so ~/.vimrc<cr>
map ,q :q<cr>
map ,w :w<cr>
map ,i ,S:PlugInstall<cr>
map ,c ,S:PlugClean<cr>
map ,u ,S:UltiSnipsEdit<cr>

" If you have the NERDtree plugin installed
" then this opens that with f2
" (really useful)
nmap <C-n> ;NERDTreeToggle<CR>


"This Highlights the word under the cursor
nmap <silent> ^ :setl hls<CR>:let @/="<C-r><C-w>"<CR>


" --- Some special settings for .txt files
au BufRead,BufNewFile *.txt setlocal wrap linebreak
au BufRead,BufNewFile *.txt setlocal syntax=txt

"BETTER LOOOKING FOLD
set foldtext=MyFoldText()
function! MyFoldText()
  let line = getline(v:foldstart)
  if match( line, '^[ \t]*\(\/\*\|\/\/\)[*/\\]*[ \t]*$' ) == 0
    let initial = substitute( line, '^\([ \t]\)*\(\/\*\|\/\/\)\(.*\)', '\1\2', '' )
    let linenum = v:foldstart + 1
    while linenum < v:foldend
      let line = getline( linenum )
      let comment_content = substitute( line, '^\([ \t\/\*]*\)\(.*\)$', '\2', 'g' )
      if comment_content != ''
        break
      endif
      let linenum = linenum + 1
    endwhile
    let sub = initial . ' ' . comment_content
  else
    let sub = line
    let startbrace = substitute( line, '^.*{[ \t]*$', '{', 'g')
    if startbrace == '{'
      let line = getline(v:foldend)
      let endbrace = substitute( line, '^[ \t]*}\(.*\)$', '}', 'g')
      if endbrace == '}'
        let sub = sub.substitute( line, '^[ \t]*}\(.*\)$', '...}\1', 'g')
      endif
    endif
  endif
  let n = v:foldend - v:foldstart + 1
  let info = " " . n . " lines"
  let sub = sub . "                                                                                                                  "
  let num_w = getwinvar( 0, '&number' ) * getwinvar( 0, '&numberwidth' )
  let fold_w = getwinvar( 0, '&foldcolumn' )
  let sub = strpart( sub, 0, winwidth(0) - strlen( info ) - num_w - fold_w - 1 )
  return sub . info
endfunction
"END 

com! ReloadSnippets :call ReloadAllSnippets()

" See invisible characters
"set list
set listchars=eol:¶,tab:>-,trail:•,extends:>,precedes:<


"auto change current directory to the current file
"autocmd BufEnter * if expand("%:p:h") !~ '^/tmp' | silent! lcd %:p:h | endif

"manually change the current directory to the current file an print it out.
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

"noremap K k

" map these keys to easy motion commands
map <leader>f <leader><leader>f
map <leader>F <leader><leader>F

com! TrailingSpaceKiller :%s/\s\+$//


" normal copy/paste
vmap <C-c> "+y
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

imap <S-Insert> <Esc>"+p
nmap <S-Insert> "+p

imap <c-s> <c-o>:w<cr>


augroup AutoReloadVimRC
   au!
   " automatically reload vimrc when it's saved
   au BufWritePost .vimrc so %
augroup END

"Run for many different thigns
au BufRead,BufNewFile *.html  :nmap ,r :!chromium %<cr>
au BufRead,BufNewFile *.go    :nmap ,r :!clear; go run %<cr>
au BufRead,BufNewFile *.go    :setlocal noexpandtab
au BufRead,BufNewFile *.go    :setlocal tabstop=4
au BufRead,BufNewFile *.php   :nmap ,r :!clear; php %<cr>
au BufRead,BufNewFile *.io    :nmap ,r :!clear; io %<cr>
au BufRead,BufNewFile *.pl    :nmap ,r :!clear; swipl %<cr>
au BufRead,BufNewFile *.erl   :nmap ,r :!clear; erlc %<cr>
au BufRead,BufNewFile *.rb    :nmap ,r :!clear; ruby %<cr>
au BufRead,BufNewFile *.cpp   :nmap ,r :!clear;echo "-----------[ error? ]-----------"; g++ -g % && echo "" && echo "-----------[ a.out ]-----------" && ./a.out && echo ""<cr>
au BufRead,BufNewFile *.cpp   :nmap ,d :!clear;gdb a.out<cr>
au BufRead,BufNewFile *.ml   :nmap ,r :!clear; ocaml %<cr>
" au BufRead,BufNewFile *.ml   :nmap ,r :!clear;echo "-----------[ error? ]-----------"; ocamlc % && echo "" && echo "-----------[ a.out ]-----------" && ./a.out && echo ""<cr>
au BufRead,BufNewFile *.js    :nmap ,r :!clear;node %<cr>
au BufRead,BufNewFile *.java  :nmap ,c :!clear;echo "-----------[ errors ]-----------"; javac %;<cr>
au BufRead,BufNewFile *.scala :nmap ,c :!clear;echo "-----------[ errors ]-----------"; scalac %;<cr>
au BufRead,BufNewFile *.hs    :nmap ,r :!clear;ghci -i %<cr>
au BufRead,BufNewFile *.ex    :nmap ,r :!clear;elixir %<cr>
au BufRead,BufNewFile *.py    :nmap ,r :!clear;python %<cr>
au BufRead,BufNewFile *.el    :nmap ,r :!clear;emacs --script %

:nmap ,m :!make<cr>



" NOTE: installed via pacman
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" -- Unite stuff (can't be put above)
nnoremap <Leader>f :Unite grep:.<cr>
nnoremap <silent> <Leader>m :Unite -buffer-name=recent -winheight=10 file_mru<cr>kA
noremap <Leader>b :Unite -buffer-name=buffers -winBundleheight=10 buffer<cr>kA

" CtrlP search
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#custom#source('file_rec/async','sorters','sorter_rank')
" replacing unite with ctrl-p
nnoremap <silent> <C-p> :Unite -start-insert -buffer-name=files -winheight=10 file_rec/async<cr>
" nnoremap <C-p> :Unite file_rec/async<cr>

nmap <tab> ==

au BufRead,BufNewFile *.txt,*.tex,*.md set wrap linebreak nolist textwidth=0 wrapmargin=0


" ocaml indent
execute ":source " . "/home/justgage/.opam/4.02.1/share/vim/syntax/ocp-indent.vim"



