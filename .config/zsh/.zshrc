# zshrc is called every time an interactive shell is initialised

# Options
source $ZDOTDIR/scripts/options

# Program config
source $ZDOTDIR/scripts/programs

# Aliases
source $ZDOTDIR/scripts/aliases

# Plugins
source $ZDOTDIR/scripts/plugins

# Load theme
eval "$(starship init zsh)"
