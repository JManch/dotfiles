# zprofile is called once at login

# Pyenv config
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# Fix color issue
export COLORTERM=truecolor

# Set starship config path
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# Disable bold colors in EXA
export EXA_COLORS=di=34:bd=33:cd=33:so=31:ex=32:ur=33:uw=31:ux=32:ue=32:uu=33:gu=33:lc=31:df=32:sn=32:nb=32:nk=32:nm=32:ng=32:nt=32
