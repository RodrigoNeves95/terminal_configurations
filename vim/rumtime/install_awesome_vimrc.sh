#!/bin/sh
set -e

cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

if exists("$TMUX")
    if has("nvim")
        set termguicolors
    else
        set term=screen-256color
    endif
endif

set notermguicolors
colorscheme gruvbox

set background=dark' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
