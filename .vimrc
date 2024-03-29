"sets a buffer for the tops and bottoms of the screen,
syntax on
colorscheme mirodark
"so when you are scrolling off the bottom or top you
"have a little context
set so=7

"show your current line and column numbers, and the % of the file
"you have gone through.  Displayed at the bottom of the screen
set ruler

"when creating new line in a file, this will try to get the indentation
"correct
filetype indent plugin on

"sets search to ignore case
set ignorecase

"attempt to indent correctly
set smartindent

"disable the arrow keys, use hjkl
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

"show whitespace on demand
""start by setting how things appear
"newline is $
""trailing space is ~
"tab is  >-----
""extends/process only apply when wrap is off, they show lines going off
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

"set it so status line is always visible
set laststatus=2
"full path of file in buffer, but not really since it shortens your home
"directory to ~/
set statusline=%F
"shows a [+] when the file has been modified sine the last time it was written
set statusline+=%m
"move to the right side of the screen
set statusline+=%=
"show the column the cursor is in, followed by a comma
set statusline+=%c,
"gives you the current line / total lines
set statusline+=%l/%L
"displays percent through file that you have been, Top and Bot when
""appropriate
set statusline+=\ %P     "percent through file

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
"set shiftwidth=3
"set tabstop=3
autocmd FileType * setlocal tabstop=4 shiftwidth=4
autocmd Filetype yaml setlocal tabstop=2 shiftwidth=2

" Linebreak on 500 characters
" set lbr
" set tw=500

"show a line at 80 char
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn=join(range(81,120),",")

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

"my key mappings
"swap ab => ba
map <F2> xph

if &term =~ '256color'
    " disable Background Colot Erase (BCE)
    set t_ut=
endif

func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.php :call DeleteTrailingWS()

