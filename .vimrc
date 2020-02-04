# .vimrc config

# Enable syntax and set display preferences
syntax on
set background=dark
#colorscheme muon
colorscheme substrata
set number

# Enable NERDTree on file open and default active window to editor
autocmd VimEnter *  NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

# Tab preferences
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

# Plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'junegunn/limelight.vim', {'on': 'Limelight'}
call plug#end()

autocmd VimEnter * wincmd p

# Enable Limelight automatically when going into Goyo zen mode
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
