" x-------------------------------------x
" | GAGES VIMRC                         |
" x-------------------------------------x
" This makes sure that it doesn't defalt to all the crappy vi stuff rather
" than use all the new vim stuff

""======== VUNDLES mannagement ===================
set nocompatible               " be iMproved
filetype off                   " required!

:let g:javascript_conceal=1

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:--------------------------
                                        " does it even need an intro?
Bundle 'The-NERD-tree'
                                        " git wrapper
Bundle 'tpope/vim-fugitive'
                                        " easer moving around (don't use very much)
Bundle 'Lokaltog/vim-easymotion'
                                        " Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
                                        " better way to make HTML fast
Bundle 'mattn/emmet-vim'
                                        " Tells me when I have an error in my code
Bundle 'Syntastic'
                                        " easy surounding of things
Bundle 'surround.vim'
                                        " Most recent files
Bundle 'mru.vim'
                                        " IDK...
                                        " Bundle 'L9'
                                        " Easy file / buffer finding
Bundle 'ctrlp.vim'
                                        " HTML matching (doesn't seem to work
Bundle 'matchit.zip'
                                        " Better replacements
Bundle 'abolish.vim'
                                        " Easy way to comment out lines
Bundle 'tComment'
                                        " JSON syntax highlighting
Bundle 'elzr/vim-json'
                                        " Match parenthesis
Bundle 'delimitMate.vim'
                                        " Project mannagement
Bundle 'joonty/vim-sauce.git'
                                        " multiple cursors like sublime
Bundle 'terryma/vim-multiple-cursors'
                                        " Cool status line
Bundle 'bling/vim-airline'
                                        " syntax highlighting for laravel's blade templating
Bundle 'xsbeats/vim-blade'
                                        " Cool colorscheme for javascript
Bundle 'goatslacker/mango.vim'
                                        " way of lining up these comments all nice
Bundle 'godlygeek/tabular'
Bundle 'MarcWeber/vim-addon-mw-utils'
                                        " markdown highlighting
Bundle 'plasticboy/vim-markdown'
                                        " awesome new way to do snippets
Bundle 'SirVer/ultisnips'
                                        " javscript highlight
Bundle 'pangloss/vim-javascript'
                                        " Jquery syntax
Bundle 'jQuery'
                                        " Use ctrl-l to format my code
Bundle 'Chiel92/vim-autoformat'
                                        " format my javascript using the above plugin
Bundle 'einars/js-beautify'

                                        " colorschemes for vim
Bundle 'flazz/vim-colorschemes'
                                        " easy way to switch them (buggy)
Bundle 'xolox/vim-colorscheme-switcher'
                                        " required for above
Bundle 'xolox/vim-misc'

                                        " cool colo
Bundle 'Lokaltog/vim-distinguished'

" git repos on your local machine (ie. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

noremap <c-l> :Autoformat<CR><CR>
 
" makes it so I can match tags with % sign
:runtime macros/matchit.vim 
 
:let g:sparkupNextMapping=',N'

:colo Monokai

filetype plugin indent on     
 "required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed.


 "========== end of vundle mannagement ===========
 


runtime ftplugin/man.vim

:cd ~/Desktop/gages/


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

nmap <C-t> :tabnew

" Makes Ctrl+Space auto complete commands 
imap <C-space> <C-X><C-O><C-P>
"Makes it so you can use jj to ESC if you can't set 
"Caps-lock to esc
imap jj <Esc>
"Makes shift+insert paste like it normaly does in
"many linux applications
imap <S-Insert> <Esc>"+p
nmap <S-Insert> "+p

"sorry I forgot what this does =p
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"adds a new command that edits your vimrc via :Vimrc
com! Vimrc :e ~/.vim/vimrc/.vimrc
map ,v ;vsplit<cr>
map ,s ;split<cr>
map ,q ;q<cr>
map ,w ;w<cr>

"I always make the typo of typing :W
"This is my lazy way of not fixing
"old habbits
com! W :w

" If you have the NERDtree plugin installed
" then this opens that with f2
" (really useful)
nmap <c-n> ;NERDTreeToggle<CR>
" This opens MRU which is a plugin
" for showing most recent files edited
" nmap <F3> :MRU<CR>



" makes scrolling faster with CTRL

nmap <C-j> jjjjj
nmap <C-k> kkkkk


" moves windows to windows using keypad 
 nmap <Left> <C-w>h 
 nmap <Right> <C-w>l 
 nmap <Up> <C-w>k 
 nmap <Down> <C-w>j 


" some mappings to find files FAST!
" this one was for buffers but it's not so useful
" map <C-b> :FuzzyFinderBuffer <CR>

" This sets the CD to the current file, pretty nice
" actualy but I like a little more control
" set autochdir	  

" helps things to indent properly
set smartindent
set tabstop=4
set shiftwidth=4
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


:nmap <space> <C-W><C-W>
:nmap <s-space> <C-W>p
:set nowrap

:nmap ,r :!php %<cr>

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

map <c-e> <c-y>
map <leader>e <c-y>
map <leader>y <c-y>


" this will make <tab> move forward with UltiSnips instead of <c-j/k>
" old habits die hard
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
