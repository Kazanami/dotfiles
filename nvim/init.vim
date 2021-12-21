set expandtab
set tabstop=2
set shiftwidth=2
set cursorline
set cursorcolumn
set number
set undodir=${HOME}/.vim/undodir
set undofile
set showtabline=2
set mouse=a
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap d "_d
xnoremap d "_d
tab all
set clipboard&
if has('win32') || has('win64')
  set clipboard^=unnamedplus
endif
if has('unix')
  set clipboard=unnamedplus
endif

source ~/.config/nvim/modules/dein_setup.vim
