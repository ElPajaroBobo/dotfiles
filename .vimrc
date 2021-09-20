" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'mhinz/vim-startify'
Plug 'stephpy/vim-yaml'
Plug 'ervandew/supertab'
Plug 'Glench/Vim-Jinja2-Syntax'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" always show line numbers "
set nu

" Set Tabstop to two spaces "
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" 'Most Recent Files' number
let g:startify_files_number           = 18

" Update session automatically as you exit vim
let g:startify_session_persistence    = 1

" Simplify the startify list to just recent files and sessions
let g:startify_lists = [
  \ { 'type': 'dir',       'header': ['   Recent files'] },
  \ { 'type': 'sessions',  'header': ['   Saved sessions'] },
  \ ]

" Fancy custom header
let g:startify_custom_header = [
  \ "  ",
  \ '          ',
  \ '         ',
  \ '           ',
  \ '   ',
  \ ]

" set background to dark
set background=dark

" disable bell
set belloff=all
