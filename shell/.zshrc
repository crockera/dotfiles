# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/acrocker/.oh-my-zsh"

# Shell/prompt theme
#ZSH_THEME="robbyrussell"
ZSH_THEME="af-magic"

# Use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Disable marking untracked files under VCS as dirty. This makes repository
# status check for large repositories much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# TMUX - Automatically start tmux
# ZSH_TMUX_AUTOSTART="true"

# Automatically connect to a previous session if it exists
# ZSH_TMUX_AUTOCONNECT="true"

# Use ~/.zsh for custom folder
ZSH_CUSTOM="$HOME/.zsh"

# Plugins
plugins=(colored-man-pages git)

source $ZSH/oh-my-zsh.sh

# Alias configuration
if [[ -r "$HOME/.aliasrc" ]]; then
  source "$HOME/.aliasrc"
fi

# Add directory to fpath
#fpath=($fpath "$HOME/.zfunc")

# export MANPATH="/usr/local/man:$MANPATH"


#export XDG_CONFIG_HOME="$HOME/.config"
#export RANGER_LOAD_DEFAULT_RC="FALSE"
#export EDITOR="nvim"

# Minishift shell configuration
#eval $(minishift oc-env)
#source <(oc completion zsh)

#export NPM_CONFIG_PREFIX="~/.npm-global"
#export PATH="~/.npm-global/bin:$PATH"

# kitty (terminal) completion setup
#autoload -Uz compinit
#compinit
# Completion for kitty
#kitty + complete setup zsh | source /dev/stdin

# Some aliases
#alias ls='ls --color=auto'
#alias grep='grep --color=auto'
#alias fgrep='fgrep --color=auto'
#alias egrep='egrep --color=auto'
#alias diff='diff --color=auto'
#alias l='ls -CF'
