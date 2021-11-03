" Manual install; curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Type :GoInstallBinaries after install plugin
    " Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

    " Shorthand notation; fetches https://vimawesome.com/plugin/surround-vim
    Plug 'tpope/vim-surround'
    " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
    Plug 'junegunn/vim-easy-align'
    " Command; https://vimawesome.com/plugin/the-nerd-commenter
    Plug 'scrooloose/nerdcommenter'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Add plugins to &runtimepath
    " Plug 'ctrlpvim/ctrlp.vim'
    Plug 'scrooloose/nerdtree'

    " Airline
    Plug 'bling/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    Plug 'https://github.com/blueyed/vim-diminactive.git'
    " Plug 'tmux-plugins/vim-tmux-focus-events'

    " Require; nvim v0.5+
    " if has("nvim")
    "     Plug 'nvim-lua/popup.nvim'
    "     Plug 'nvim-lua/plenary.nvim'
    "     Plug 'nvim-telescope/telescope.nvim'
    " endif

call plug#end()
