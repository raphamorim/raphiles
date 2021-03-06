#!/bin/sh

# use vim7.4 (autocomplete)
echo "\n+ Update vim to 7.4 with Lua"
brew install vim --with-lua --override-system-vim

mkdir ~/.vim && cp configs/vimrc ~/.vimrc
echo "\n+ Lucario Color Scheme..."
mkdir -p ~/.vim/colors && cd ~/.vim/colors
git clone https://github.com/raphamorim/lucario.git && cp ./lucario/colors/lucario.vim ~/.vim/colors/lucario.vim
echo "\n+ Pathogen..."
mkdir -p ~/.vim/autoload && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo "\n+ NERDTree..."
mkdir ~/.vim/bundle && cd ~/.vim/bundle && git clone https://github.com/scrooloose/nerdtree.git
echo "\n+ Vim Airline..."
git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline
echo "\n+ Command-T..."
cd ~/.vim && git clone https://github.com/wincent/command-t.git bundle/command-t
cd ~/.vim/bundle/command-t && git pull
cd ~/.vim/bundle/command-t/ruby/command-t && ruby extconf.rb && make
echo "\n+ Installing Powerline..."
pip install --user git+git://github.com/Lokaltog/powerline

echo "\n+ Setup Rust"
git clone --depth=1 https://github.com/rust-lang/rust.vim.git ~/.vim/bundle/rust.vim

echo "\n+ Setup Golang"
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go

echo "\n+ Install autocomplete"
git clone https://github.com/Shougo/neocomplete.vim.git && cd ./neocomplete.vim && mv plugin ~/.vim/ && mv autoload/* ~/.vim/autoload

