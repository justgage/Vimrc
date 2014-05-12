" x-------------------------------------x
" | GAGES VIMRC                         |
" x-------------------------------------x
" This makes sure that it doesn't defalt to all the crappy vi stuff rather
" than use all the new vim stuff

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Shougo/unite.vim'
Plug 'mattn/emmet-vim'
Plug 'surround.vim'
Plug 'Blackrush/vim-gocode'
Plug 'Syntastic'
Plug 'SirVer/ultisnips'
Plug 'Shougo/neomru.vim'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'vimwiki/vimwiki'
Plug 'jcf/vim-latex'
Plug 'tComment'
Plug 'Shougo/vimproc.vim'
Plug 'marijnh/tern_for_vim'
Plug 'kchmck/vim-coffee-script'
Plug 'majutsushi/tagbar', { 'on' : 'TagbarToggle' }
Plug 'dag/vim2hs'
Plug 'godlygeek/tabular'

call plug#end()

""======== VUNDLES mannagement ===================
"set nocompatible               " be iMproved
"filetype off                   " required!
"
"
" set rtp+=~/.vim/bundle/vundle/
" call vundle#rc()
"
" let Vundle manage Vundle
" required!
"Bundle 'gmarik/vundle'

" My Bundles here:--------------------------
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'jQuery'
"Bundle 'terryma/vim-multiple-cursors'
"Bundle 'Chiel92/vim-autoformat'
" Bundle 'Lokaltog/vim-distinguished'
" Bundle 'MarcWeber/vim-addon-mw-utils'
" Bundle 'Shutnik/jshint2.vim'
" Bundle 'SirVer/ultisnips'
" Bundle 'Syntastic'
" Bundle 'The-NERD-tree'
" Bundle 'abolish.vim'
" Bundle 'bling/vim-airline'
" Bundle 'cwoac/nvim'
" "Bundle 'dxw/vim-php-indent'
" Bundle 'einars/js-beautify'
" Bundle 'elzr/vim-json'
" Bundle 'flazz/vim-colorschemes'
" Bundle 'goatslacker/mango.vim'
" Bundle 'godlygeek/tabular'
" Bundle 'groenewege/vim-less'
" Bundle 'joonty/vim-sauce.git'
" Bundle 'lukaszkorecki/workflowish'
" Bundle 'markwu/vim-laravel4-snippets'
" Bundle 'matchit.zip'
" Bundle 'mattn/emmet-vim'
" Bundle 'Shougo/neomru.vim'
" Bundle 'pangloss/vim-javascript'
" Bundle 'plasticboy/vim-markdown'
" Bundle 'skammer/vim-css-color'
" Bundle 'surround.vim'
" Bundle 'tpope/vim-fugitive'
" Bundle 'vim-scripts/vim-auto-save'
" Bundle 'xolox/vim-colorscheme-switcher'
" Bundle 'xolox/vim-misc'
" Bundle 'xsbeats/vim-blade'
" Bundle 'Shougo/neocomplcache.vim'
" Bundle 'spf13/PIV'
" Bundle 'majutsushi/tagbar'
" Bundle 'Shougo/unite.vim'
" Bundle 'jcf/vim-latex'
" Bundle 'xuhdev/vim-latex-live-preview'
" Bundle 'simplenote.vim'


"Bundle 'vim-scripts/YankRing.vim'

" git repos on your local machine (ie. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

noremap <c-l> :TagbarToggle<CR>

" makes it so I can match tags with % sign
:runtime macros/matchit.vim

:let g:sparkupNextMapping=',n'
set background=dark
set t_Co=256 | colorscheme seoul256

filetype plugin indent on

runtime ftplugin/man.vim

set ruler " puts a bar on the bottom with info

set laststatus=1

"the next three are commands that add firefox
"like keybindings for tabs
imap <C-S-tab> <ESC>:tabprevious<cr>i
"imap <C-t> <ESC>:tabnew<cr>i
imap <C-tab> <ESC>:tabnext<cr>i
nmap <C-S-tab> :tabprevious<cr>
"nmap <C-t> :tabnew<cr>
nmap <C-tab> :tabnext<cr>

nmap <C-t> :tabnew<cr>

" Makes Ctrl+Space auto complete commands
imap <C-space> <C-X><C-O><C-P>
"Makes it so you can use jj to ESC if you can't set
"Caps-lock to esc
" Also says 'just kidding'
imap jk <Esc>
"Makes shift+insert paste like it normaly does in
"many linux applications
imap <S-Insert> <Esc>"+p
nmap <S-Insert> "+p

"adds a new command that edits your vimrc via :Vimrc
com! Vimrc :e ~/Vimrc/.vimrc
map ,v :vsplit<cr>
map ,s :split<cr>
map ,V :Vimrc<cr>
map ,S :so ~/.vimrc<cr>
map ,q :q<cr>
map ,w :w<cr>
map ,i ,S:BundleInstall<cr>
map ,c ,S:BundleClean<cr>

"I always make the typo of typing :W
"This is my lazy way of not fixing
"old habbits
com! W :w

" If you have the NERDtree plugin installed
" then this opens that with f2
" (really useful)
nmap <C-n> ;NERDTreeToggle<CR>

" makes scrolling faster with CTRL

nmap <C-j> jjjjj
nmap <C-k> kkkkk

" This sets the CD to the current file, pretty nice
" actualy but I like a little more control
" set autochdir

" helps things to indent properly
set smartindent
set tabstop=3
set shiftwidth=3
set expandtab

" Highlights the current line, which is nice but somtimes
" can slow down the ui, and vim is about SPEED!
" set cul
set guioptions-=m "Gits rid of the menus
set guioptions-=T "Gets rid of the Toolbar set guioptions-=r "Get's rid of the scroll bars
set hlsearch "highlights things after you searched for them
set ignorecase
set smartcase "makes searches case-insenstive which I like
" I had nobackup for a while because I didn't like
" vim making extra files on my system, but now I like it
" set nobackup
" set backup
set number "line numbers!, essentual!

set wildmenu
set nowrap
set incsearch

nmap > >>
nmap < <<


"This Highlights the word under the cursor
nmap <silent> ^ :setl hls<CR>:let @/="<C-r><C-w>"<CR>


" this I find nice
" Set's it so that there's 3 lines of padding between the cursor and the
" top/bottom of the screen
set scrolloff=3
" set vb t_vb=".

"makes it so that jquery scripts have jquery syntax highlighting
au BufRead,BufNewFile *.js set ft=javascript.jquery
   " --- Some special settings for .txt files
au BufRead,BufNewFile *.txt setlocal wrap linebreak
au BufRead,BufNewFile *.txt setlocal syntax=txt

au BufRead,BufNewFile *.wofl setlocal syntax=workflowish
au BufRead,BufNewFile *.wofl call workflowish#convert_from_workflowy()
   " --- This Fixes the indents automaticly for all PHP files
" au FileType php silent normal gg=G
   " --- This Turns cursor collmons on and off when you lave a buffer
" au WinLeave * set nocursorline nocursorcolumn
" au WinEnter * set cursorline


"this makes a line on the right showing where
"fold are in the code (usualy their invisible)
set foldcolumn=0
" puts a {{{ in the file so it saves your folds
" you have made but also makes it harder to read
" set foldmethod=marker

"BETTER LOOOKING FOLD! WOOOOOOOOOOT!
" Set a nicer foldtext function
" I picked up, I like it a lot
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
"END OR BETTER LOOKING FOLD


nnoremap <space> <C-W><C-W>
nnoremap <s-space> <C-W>p
:set nowrap

":nmap ,r :!php %<cr>

:let mapleader = ","

:set foldmethod=syntax

"mappings for multiple cursors
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_next_key='<C-f>'
let g:multi_cursor_prev_key='<C-d>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" be even faster!
inoremap jj <Esc>:w<CR>
inoremap ;; <End>;<Esc>:w<CR>
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


com! ReloadSnippets :call ReloadAllSnippets()



" See invisible characters
"set list
set listchars=eol:¶,tab:>-,trail:•,extends:>,precedes:<


" EMMET settings
let g:user_emmet_mode='a'    "enable all function in all mode.

let g:user_emmet_install_global = 0

autocmd FileType html,css,php,blade EmmetInstall

imap <D-e> <c-y>,
imap <C-e> <c-y>,
map <leader>e <c-y>
map <leader>y <c-y>


" this will make <tab> move forward with UltiSnips instead of <c-j/k>
" old habits die hard
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"auto change current directory to the current file
"autocmd BufEnter * if expand("%:p:h") !~ '^/tmp' | silent! lcd %:p:h | endif

"manually change the current directory to the current file an print it out.
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

noremap K k

" map these keys to easy motion commands
map <leader>f <leader><leader>f
map <leader>F <leader><leader>F

com! TrailingSpaceKiller :%s/\s\+$//

"set syntax highlighting ON

:syntax on

" normal copy/paste
vmap <C-c> "+y<Esc>i
vmap <C-x> d<Esc>i
imap <C-V> <c-o>"+p
imap <C-y> <Esc>ddi
map <C-z> <Esc>
imap <C-z> <Esc>ui


imap <c-s> <c-o>:w<cr>

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

augroup AutoReloadVimRC
   au!
   " automatically reload vimrc when it's saved
   au BufWritePost .vimrc so %
augroup END

"Run for many different thigns
au BufRead,BufNewFile *.html :nmap ,r :!chromium %<cr>
au BufRead,BufNewFile *.go :nmap ,r :!clear; go run %<cr>
au BufRead,BufNewFile *.go setlocal noexpandtab
au BufRead,BufNewFile *.go setlocal tabstop=4
au BufRead,BufNewFile *.php :nmap ,r :!clear; php %<cr>
au BufRead,BufNewFile *.rb :nmap ,r :!clear; ruby %<cr>
au BufRead,BufNewFile *.cpp :nmap ,r :!clear;echo "-----------[ error? ]-----------"; g++ -g % && echo "" && echo "-----------[ a.out ]-----------" && ./a.out && echo ""<cr>
au BufRead,BufNewFile *.js :nmap ,r :!clear;node %<cr>
au BufRead,BufNewFile *.java :nmap ,c :!clear;echo "-----------[ errors ]-----------"; javac %;<cr>
au BufRead,BufNewFile *.java :nmap ,r :!clear;echo "-----------[ errors ]-----------"; java %<backspace><backspace><backspace><cr>

"----Unite stuff----
nnoremap <Leader>f :Unite grep:.<cr>
nnoremap <silent> <Leader>m :Unite -buffer-name=recent -winheight=10 file_mru<cr>kA
noremap <Leader>b :Unite -buffer-name=buffers -winBundleheight=10 buffer<cr>kA
" CtrlP search
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#custom#source('file_rec/async','sorters','sorter_rank')
" replacing unite with ctrl-p
"nnoremap <silent> <C-p> :Unite -start-insert -buffer-name=files -winheight=10 file_rec/async<cr>
nnoremap <C-p> :Unite file_rec/async<cr>kA

map <Leader>w :VimwikiIndex<cr>

autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
