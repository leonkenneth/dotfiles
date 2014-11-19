" {{{ settings

set nocompatible                " Use Vim defaults instead of 100% vi compatibility
set backspace=indent,eol,start  " more powerful backspacing
set nu
set foldmethod=marker
set autoindent

set esckeys                     " allow usage of curs keys within insert mode
set listchars=eol:\ ,tab:\%\ ,trail:-,extends:>,precedes:<
set list
set joinspaces                  " insert two spaces after a period with every joining of lines.
                                " This is very nice!
set lazyredraw                  " [VIM5];  do not update screen while executing macros
set magic                       " Use some magic in search patterns?  Certainly!
set modeline                    " Allow the last line to be a modeline - useful when
                                " the last line in sig gives the preferred text-width
                                " for replies.
set modelines=5
set pastetoggle=<F4>

set laststatus=2                " show status line?  Yes, always!
set noruler                       " show cursor position?  Yep!
set statusline=<\ %f\ %r%y\ %=\ %l,%c%V\ \ %P\ >

set shiftwidth=2                " Number of spaces to use for each insertion of
                                " (auto)indent.
set shortmess=at                " Kind of messages to show.   Abbreviate them all!
                                " New since vim-5.0v: flag 'I' to suppress "intro message".
set scrolloff=0                 " context
set noshowcmd                   " Show current uncompleted command?  Absolutely!
set showmatch                   " Show the matching bracket for the last ')'?
set showmode                    " Show the current mode?  YEEEEEEEEESSSSSSSSSSS!

set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.cmi,.cmo
                                " Suffixes to ignore in file completion

set tabstop=2                   " tabstop
set softtabstop=2               " sts
set expandtab                 " expand tabs
set notextmode                  " no - I am using Vim on UNIX!
set textwidth=0                 " Don't wrap words by default
set notitle                     " Permet de voir le tit. du doc. crt. ds les XTERM
if version >= 700
   set viminfo='1000,/1000,:1000,<1000,@1000,n~/.viminfo
endif
set history=1000
                                " What info to store from an editing session
                                " in the viminfo file;  can be used at next session.
set sessionoptions-=blank
set sessionoptions-=folds

set ignorecase                  " Do case insensitive matching
set incsearch                   " Incremental search
set hlsearch                    " hilight search


set whichwrap=<,>,[,]           "
set wildchar=<TAB>              " the char used for "expansion" on the command line
                                " default value is "<C-E>" but I prefer the tab key:
set wildmenu                    " Completion on the command line shows a menu
set winminheight=0              " Minimum height of VIM's windows opened
set mouse=h
set mousefocus
set wrapmargin=0
set nobackup
set nowritebackup
set noswapfile
set colorcolumn=80
set foldmethod=marker

set cpoptions-=C                " enable commands that continue on the next line

" use ctrl-n ctrl-n instead of ctrl-x ctrl-k
set complete-=k complete+=k

set tags+=./.tags,.tags

set cinoptions=
set cinoptions+=,t0            " type on the line before the functions is not idented
set cinoptions+=,:2,=2         " indent case ...: of 2 from the switch {
set cinoptions+=,(0,W4         " indent in functions ( ... ) when it breaks
set cinoptions+=,g2,h2         " indent C++ scope of 2, and the members from 2 from it
"set cinoptions+=l1            " align closing brace with the case
"set cinoptions+=b1            " align break; with case ...:

set diffopt=filler,context:5,iwhite
set fillchars+=diff:\ 

set makeprg=LC_ALL=C\ make

exe "set path=." . system("echo | cpp -v 2>&1 | grep '^ .*/include' | tr -d \"\n\" | tr \" \" \",\"")

" }}}

" Pathogen
call pathogen#infect()

" Autoopen NERDTree
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

syntax on


set encoding=utf-8
set fileencoding=utf-8
