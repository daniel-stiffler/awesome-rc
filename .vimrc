set nocompatible " Be iMproved, required for Vundle
filetype off  " Required for Vundle

set rtp+=$HOME/.vim/bundle/Vundle.vim

" Vundle brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

call vundle#begin()
" <BEGIN> Vim Plugin Management

Plugin 'VundleVim/Vundle.vim' " Let Vundle handle itself, required
Plugin 'tpope/vim-repeat' " Use . to repeat plugin maps
Plugin 'tpope/vim-fugitive' " Fugitive
Plugin 'scrooloose/nerdtree' " The NERD tree
Plugin 'tpope/vim-surround' " Surround: Quoting / Parenthesizing Made Simple
Plugin 'junegunn/fzf.vim' " Vim Fuzzy-Finder
Plugin 'mileszs/ack.vim' " ACK Search Tool
Plugin 'sheerun/vim-polyglot' " Collection of language packs
Plugin 'w0rp/ale' " Asynchronous Lint Engine
Plugin 'altercation/vim-colors-solarized' " Solarized Palette
Plugin 'bling/vim-airline' " Vim Airline
Plugin 'majutsushi/tagbar' " Tagbar
Plugin 'scrooloose/nerdcommenter' " NERD Commenting
Plugin 'airblade/vim-gitgutter' " Show git diffs in the gutter
Plugin 'valloric/youcompleteme' " YCM Code-completion
Plugin 'vim-airline/vim-airline-themes' " Vim Airline Themes
Plugin 'nathanaelkane/vim-indent-guides' " Indent Guides
Plugin 'plasticboy/vim-markdown' " Markdown in Vim

" <END> Vim Plugin Management
call vundle#end()

filetype plugin indent on " Return to normal treatment of files

" Source multiple levels of vimrcs
source $HOME/.vim/vimrcs/basic.vim
source $HOME/.vim/vimrcs/extended.vim
source $HOME/.vim/vimrcs/plugins_config.vim

" Get rid of warning on save/exit typo
command WQ wq
command Wq wq
command Q q

" Vim HARD mode
function! NoArrows()
  noremap <Up> <NOP>
  noremap <Down> <NOP>
  noremap <Left> <NOP>
  noremap <Right> <NOP>
  noremap <PageUp> <NOP>
  noremap <PageDown> <NOP>

  inoremap <Up> <NOP>
  inoremap <Down> <NOP>
  inoremap <Left> <NOP>
  inoremap <Right> <NOP>
  inoremap <PageUp> <NOP>
  inoremap <PageDown> <NOP>

  vnoremap <Up> <NOP>
  vnoremap <Down> <NOP>
  vnoremap <Left> <NOP>
  vnoremap <Right> <NOP>
  vnoremap <PageUp> <NOP>
  vnoremap <PageDown> <NOP>
endfunc

function! NoMouse()
  set mouse=
endfunc

function! HardMode()
  call NoArrows()
  call NoMouse()
endfunc

autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
