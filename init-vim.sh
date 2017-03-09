#!/bin/sh

cd ~

# clean
echo 'Start to clean vim folders.'
rm ~/.vimrc
rm -rf ~/.vim
rm -rf ~/.vim.d
echo 'Cleaned.'

# .vimrc & vundle
echo 'Start to download vim configure files.'
wget https://raw.githubusercontent.com/wildskyf/vim.d/master/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# .vim.d
mkdir ~/.vim.d
cd ~/.vim.d
wget https://raw.githubusercontent.com/wildskyf/vim.d/master/.vim.d/autorun.vimrc
wget https://raw.githubusercontent.com/wildskyf/vim.d/master/.vim.d/general.vimrc
wget https://raw.githubusercontent.com/wildskyf/vim.d/master/.vim.d/keys.vimrc
wget https://raw.githubusercontent.com/wildskyf/vim.d/master/.vim.d/packages.vimrc
wget https://raw.githubusercontent.com/wildskyf/vim.d/master/.vim.d/packages_config.vimrc
echo 'Downloaded.'

echo 'Start to install vim packages.'
vim -c 'PluginInstall' -c 'qa!'
echo 'Installed.'


echo '========================================================================'
echo 'Finished. You might need to install or compile some dependency packages.'
echo '========================================================================'
