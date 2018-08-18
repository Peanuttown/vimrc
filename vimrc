set number
set hlsearch
set cindent
set tabstop=4
set nocompatible
filetype on
syntax on
syntax enable
set background=light
colorscheme solarized
"vundle start
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"Plugin 'fatih/vim-go'
Plugin 'git://github.com/scrooloose/nerdtree.git'
Plugin 'git://github.com/altercation/solarized.git'
"Plugin 'git://github.com/vim-syntastic/syntastic.git'
Plugin 'Valloric/YouCompleteMe'
let g:clang_use_library = 1
let g:clang_library_path = '/usr/lib/llvm-3.5/lib/'

inoremap ( ()<esc>i
inoremap { {}<esc>i

"------syntastic
"execute pathogen#infect()

"-------------tags设置
set tags=tags; "自动查找
set autochdir "自动切换目录
nnoremap <c-]> :w<enter><c-]>

let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'


"------支持go语法高亮
"  if exists("g:did_load_filetypes")
"    filetype off
"    filetype plugin indent off
"  endif
"set runtimepath+=$GOROOT/misc/vim " replace $GOROOT with the output of: go env GOROOT
"filetype plugin indent on
"syntax on