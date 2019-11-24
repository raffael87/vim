"""""""""""""""""""""""
"""" START Vundle Configuration
"""""""""""""""""""""""
filetype off                                    " required: disable file type for vundle
set rtp+=~/.vim/bundle/Vundle.vim               " set the runtime path to include Vundle and initialize
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'                    " file explorer
Plugin 'jistr/vim-nerdtree-tabs'                " extension for nerdtree in tabs
Plugin 'majutsushi/tagbar'                      " tagbar to show methods
Plugin 'Valloric/YouCompleteMe'                 " code completion
Plugin 'scrooloose/syntastic'
Plugin 'grailbio/bazel-compilation-database'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'morhetz/gruvbox'

call vundle#end()                               " required
filetype plugin indent on                       " required
"""" END Vundle Configuration

syntax on

"""""""""""""""""""""""
""" Settings
"""""""""""""""""""""""
set number                                      " show line numbers
set ruler                                       " shows current line number on bottom right
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set laststatus=2                            " show status line
set cursorline                              " highlight current line
set ignorecase                              " case insensitive search
set smartcase                               " when capital letter, then case sensitve
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set nowrap
set encoding=utf8
set backspace=indent,eol,start              " OSX stupid backspace fix
set nocompatible
set lbr                                     " line breaks
set ai                                      " auto intend
set si                                      " smart intend (eg after braces)
set autochdir                               " set current dir to file dir

"""""""""""""""""""""""
""" Variables
"""""""""""""""""""""""
let g:elite_mode=1                              " no arrow keys
let mapleader=","                               " sets <leader> to <,>
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"""""""""""""""""""""""
""" Remaping
"""""""""""""""""""""""
inoremap jk <Esc>
map <leader>w :w!<CR>
map <C-n> :NERDTreeTabsToggle<CR>
map <C-m> :TagbarToggle<CR>
map <leader>n :call ToggleNerdTree()<CR>
"map <leader>n :NERDTreeFind<CR>
map <leader>f :FZF<CR>

"""""""""""""""""""""""
""" Colors
"""""""""""""""""""""""
"colorscheme spacegray
colorscheme gruvbox

"""""""""""""""""""""""
""" Functions
"""""""""""""""""""""""
function! ToggleNerdTree()
    if exists("g:NERDTree") && g:NERDTree.IsOpen()
        NERDTreeClose
    else
      NERDTreeFind
    endif
endfunction
