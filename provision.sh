#!/bin/zsh

USER=`whoami`

# package dependencies
sudo apt-get -y install curl neovim zsh virtualbox silversearcher-ag libreadline-dev zlib1g-dev
chsh -s /usr/bin/zsh

# oh-my-zsh
test -d /home/$USER/.oh-my-zsh || curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# dotfiles
cp -r ./dotfiles/.* ~/
source ~/.zshrc

# neovim-plug
test -d ~/.config/nvim || curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# pyenv and python(s)
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm
test -d ~/.pyenv || curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
source ~/.zshrc
pyenv global 2.7.9 || pyenv install 2.7.9
pyenv global 2.7.9

pip install virtualenvwrapper
mkdir -p ~/Virtualenvs

# rbenv and rub(y/ies)
sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev
test -d ~/.rbenv || git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
test -d ~/.rbenv/plugins/ruby-build || git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
source ~/.zshrc
rbenv global 2.1.2 || rbenv install 2.1.2
rbenv global 2.1.2

# R
sudo add-apt-repository "deb http://cran.stat.ucla.edu/bin/linux/ubuntu trusty/"
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -
sudo apt-get update
sudo apt-get install r-base r-base-dev
Rscript -e "install.packages('devtools')"
