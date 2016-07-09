#!/bin/sh

mkdir ~/.vim && cp configs/vimrc ~/.vimrc
echo "\n+ Lucario Color Scheme..."
mkdir -p ~/.vim/colors && cd ~/.vim/colors
git clone https://github.com/raphamorim/lucario.git && cp lucario/vim/colors/lucario.vim ~/.vim/colors/lucario.vim
echo "\n+ Pathogen..."
mkdir -p ~/.vim/autoload && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo "\n+ NERDTree..."
mkdir ~/.vim/bundle && cd ~/.vim/bundle && git clone https://github.com/scrooloose/nerdtree.git
echo "\n+ Vim Airline..."
git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline
echo "\n+ Installing Powerline..."
pip install --user git+git://github.com/Lokaltog/powerline

