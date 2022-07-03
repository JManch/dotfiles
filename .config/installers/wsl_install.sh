#/usr/bin/env sh

# check if we have root
if [ `id -u` != 0 ]
then
    echo 'Must be root to run install script'
    exit
fi

# purge package that gives errors
apt-get purge needrestart -y

# update and upgrade
apt update && apt upgrade -y && apt autoremove -y

# clone dotfiles repo
git clone --bare https://github.com/JManch/new_dotfiles $HOME/.dotfiles
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME config --local status.showUntrackedFiles no

# wsl conf
cp $HOME/.config/wsl/wsl.conf /etc/
echo "[user]\ndefault=$SUDO_USER" >> /etc/wsl.conf

# install zsh
apt-get install zsh -y
echo "export ZDOTDIR=~/.config/zsh" >> /etc/zsh/zshenv
chsh -s $(which zsh)
./$HOME/.config/zsh/plugins/plugin-install.sh

# install programs
curl -sS https://starship.rs/install.sh | sh -s -- -y
apt install bat -y

exec -c zsh
