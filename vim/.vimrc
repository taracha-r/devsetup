set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"FZF plugin
Plugin 'junegunn/fzf.vim'

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

"" Python Syntax
Plugin 'vim-python/python-syntax'
" plant uml vim
Plugin 'scrooloose/vim-slumlord'

" JS Linter
Plugin 'posva/vim-vue'
"" plant uml syntax

Plugin 'aklt/plantuml-syntax'
Plugin 'tyru/open-browser.vim'
Plugin 'weirongxu/plantuml-previewer.vim'
"" Async Linter
Plugin 'dense-analysis/ale'
" git repos on your local machine (i.e. when working on your own plugin)
"" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
""Color Schemes
Plugin 'doums/darcula'
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
set number
set backspace=indent,eol,start
syntax on
let g:ale_linter_aliases = {'vue': ['vue', 'javascript']}
let g:ale_linters = {'vue': ['eslint', 'vls']}
let g:ale_fixers = {
\	'yaml': ['yamlfix'],
\       'python': ['isort', 'autopep8'],
\       '*': ['remove_trailing_lines',
\      	'trim_whitespace'],
\       'vue': ['eslint'],
\	'html': ['prettier'],
\	}
" let g:ale_python_flake8_options = '--max-line-length=200'
let g:ale_python_autopep8_options = '--max-line-length=120'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'
let g:ale_fix_on_save = 1
let g:indentLine_char = '⦙'
let g:ale_warn_about_trailing_whitespace = 0
"" Remove annoting system sound
set noeb vb t_vb=
""add highlight
set hlsearch
"" use fzf in vim
set rtp+=/usr/local/opt/fzf
"" syntax highlighting
let g:python_highlight_all = 1
colorscheme darcula
set termguicolors


autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab
