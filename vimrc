set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'docker/docker' , {'rtp': '/contrib/syntax/vim/'}
Plugin 'vim-syntastic/syntastic'
Plugin 'wakatime/vim-wakatime'
Plugin 'pearofducks/ansible-vim'
Plugin 'ledger/vim-ledger'
Plugin 'nathangrigg/vim-beancount'
Plugin 'chr4/nginx.vim'
" All of your Plugins must be added before the following line
call vundle#end()  
filetype plugin on

syntax on
set ts=2 sts=2 sw=2 et modeline
Bundle 'stephpy/vim-yaml'
Bundle 'lepture/vim-jinja'
Bundle 'Matt-Deacalion/vim-systemd-syntax'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers = ['bandit', 'flake8', 'frosted', 'mypy', 'prospector', 'pycodestyle', 'pydocstyle', 'pyflakes', 'pylama', 'pylint', 'python']
let g:syntastic_aggregate_errors = 1
let g:syntastic_rst_checkers = ['sphinx']
let g:syntastic_yaml_checkers = ['yamllint']
let g:syntastic_ansible_checkers = ['ansible-lint']

let g:ansible_unindent_after_newline = 1
let g:ansible_yamlKeyName = 'yamlKey'
let g:ansible_name_highlight = 'd'
let g:ansible_extra_keywords_highlight = 1
let g:ansible_normal_keywords_highlight = 'Constant'
let g:ansible_attribute_highlight = "ob"


au BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm set ft=jinja
au BufNewFile,BufRead *.rst set sts=3 sw=3 ts=3 ft=rst
au BufNewFile,BufRead *.service set sts=2 sw=2 ts=2 ft=systemd
au BufNewFile,BufRead Jenkinsfile setf groovy
au BufNewFile,BufRead *.bean,*.beancount setf beancount 

au BufNewFile,BufRead accounts,journal,register,*.journal,*.ldg,*.ledger setf ledger | comp ledger

