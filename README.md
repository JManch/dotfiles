# dotfiles

Clone as a bare repo and use the dotfiles alias to interact.

`git clone --bare https://github.com/JManch/dotfiles $HOME/.dotfiles`

`alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'` (defined in .zshrc)
