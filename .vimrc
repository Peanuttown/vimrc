set nocompatible              " be iMproved, required
set nu
set ts=4
set hlsearch
set wildmode=full
set wildmenu
set path=.,/usr/local/go/src
set tags +=~/note/gnuclib/glibc/tags;
"colorscheme ron
colorscheme morning
set cursorline
hi CursorLine   cterm=NONE ctermbg=4 ctermfg=white guibg=green guifg=white
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
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'fatih/vim-go'
Plugin 'scrooloose/nerdtree'
Plugin 'ianva/vim-youdao-translater'
Plugin 'Valloric/YouCompleteMe'
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

let g:go_auto_type_info=1


"let g:deoplete#omni#input_patterns 
set ic
inoremap ( ()<esc>i
inoremap { {}<esc>i
inoremap [ []<esc>i
inoremap ` ``<esc>i
inoremap " ""<esc>i
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

nnoremap <S-q> :w<CR>:shell<CR>

 " path to directory where library can be found
let g:clang_library_path='/usr/include'
 " or path directly to the library file
" let g:clang_library_path='/usr/lib64/libclang.so.3.8'
"

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

"youdao
noremap <leader>yd :<C-u>Yde<CR>
nnoremap <C-F> yaw<esc>:!yd <C-R>0<CR>

cnoremap <C-G> !go test -v -test.run <C-R>0<CR>

