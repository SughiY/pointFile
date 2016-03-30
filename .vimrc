set nocompatible               " be iMproved 
filetype off                   " required! 
  
set rtp+=~/.vim/bundle/Vundle.vim
let path='~/.vim/bundle'
call vundle#beign(path)

" Let Vundle manage itself 
Plugin 'VundleVim/Vundle.vim'
"
" Plugins
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
" Grammer completion
Plugin 'Valloric/YouCompleteMe'
" Syntax highlight
Plugin 'rust-lang/rust.vim'
" PowerLine
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Grammer Checker
Plugin 'scrooloose/syntastic'
" lldb
Plugin 'gilligan/vim-lldb'
" Color schemes
Plugin 'altercation/vim-colors-solarized'
" Easy Motion
Plugin 'easymotion/vim-easymotion'
"
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Quick function
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
imap jk <ESC>
command CDC cd %:p:h
let mapleader = "\<Space>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Easy motion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" <Leader>f{char} to move to {char}
map  <Leader><Leader>f <Plug>(easymotion-bd-f)
nmap <Leader><Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to word
map  <Leader><Leader>w <Plug>(easymotion-bd-w)
nmap <Leader><Leader>w <Plug>(easymotion-overwin-w)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Solarized configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
set background=light
let g:solarized_termcolors=256
colorscheme solarized

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Racer configuratio
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_rust_src_path = '/usr/local/Cellar/rust/1.6.0/rustc/src'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Rust configuratio
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rustfmt_autosave = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" airline configuratio
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='molokai'
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic configuratio
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_c_includes_dirs = ['/usr/local/Cellar/aubio/src/']

let g:syntastic_warning_symbol = 'WW'
let g:syntastic_error_symbol = 'EE'

