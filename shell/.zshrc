# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation
export ZSH="/home/acrocker/.oh-my-zsh"

# Shell theme
ZSH_THEME="robbyrussell"

# TMUX - Automatically start tmux
#ZSH_TMUX_AUTOSTART="true"

# Automatically connect to a previous session if it exists
#ZSH_TMUX_AUTOCONNECT="true"

# Enable command auto-correction
ENABLE_CORRECTION="true"

# Display red dots while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Disable marking untracked files under VCS as dirty. This makes repository
# status checking for large repositories much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Use ~/.zsh for custom folder
ZSH_CUSTOM="$HOME/.zsh"

# Plugins
plugins=(colored-man-pages docker git)

source $ZSH/oh-my-zsh.sh

# Alias configuration
if [[ -f "$HOME/.aliasrc" ]]; then
	source "$HOME/.aliasrc"
fi

# Add directory to fpath
fpath=($fpath "/home/acrocker/.zfunctions")

# Set Spaceship ZSH as a prompt
#autoload -U promptinit; promptinit
#prompt spaceship

