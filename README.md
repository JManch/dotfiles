# Configuration

`git clone --bare https://github.com/JManch/dotfiles $HOME/.dotfiles && /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout`

Add the following line to /etc/zsh/zshenv: `export ZDOTDIR=~/.config/zsh`

Use the `dotfiles` alias defined in .zshrc to interact with the repo

### Program list:
- zsh
- zsh plugins (script in ~/.config/zsh/plugins/)
- starship
- exa
- bat
- pyenv
