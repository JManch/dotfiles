#/usr/bin/env sh

# check if we have root
if [ `id -u` != 0 ]
then
    echo "Must be root to run install script"
    exit
fi

# update and upgrade
apt update && apt upgrade -y

# create sudo user
echo "Enter your username:"
read username
useradd $username
useradd $username sudo
su $username
whoami

# clone and checkout dot files repo
git clone --bare https://github.com/JManch/dotfiles $HOME/.dotfiles
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME config --local status.showUntrackedFiles no

# install and configure zsh
apt-get install zsh -y
echo "export ZDOTDIR=~/.config/zsh" >> /etc/zsh/zshenv 
chsh -s $(which zsh)

