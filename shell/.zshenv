# =============================================================================
#
# ~/.zshenv
#
# =============================================================================

# ---------------------------------------------------------
# Environment Configuration
# ---------------------------------------------------------
export LANG="en_US.UTF-8"
export ARCHFLAGS="-arch x86_64"
export EDITOR="nvim"

# ---------------------------------------------------------
# PATH Configuration
# ---------------------------------------------------------

# Set PATH to include user's private bin if it exists
if [[ -d "$HOME/bin" ]]; then
	PATH="$HOME/bin:$PATH"
fi

# Set PATH to include user's private local bin if it exists
if [[ -d "$HOME/.local/bin" ]]; then
	PATH="$HOME/.local/bin:$PATH"
fi

# Set PATH to include user's usr/bin if it exists
if [[ -d "$HOME/usr/bin" ]]; then
	PATH="$HOME/usr/bin:$PATH"
fi

# Set PATH to include user's scripts if it exists
if [[ -d "$HOME/scripts" ]]; then
	PATH="$HOME/scripts:$PATH"
fi

# Set PATH to include user's scripts if it exists
if [[ -d "$HOME/.scripts" ]]; then
	PATH="$HOME/.scripts:$PATH"
fi

# ---------------------------------------------------------
# XDG config
# ---------------------------------------------------------
export XDG_CONFIG_HOME="$HOME/.config"

# ---------------------------------------------------------
# Global NPM Location Configuration
# ---------------------------------------------------------
export NPM_CONFIG_PREFIX="$HOME/.npm-global"
export PATH="$HOME/.npm-global/bin:$PATH"

# ---------------------------------------------------------
# ranger file manager - skip loading default config file
# ---------------------------------------------------------
export RANGER_LOAD_DEFAULT_RC="FALSE"

# ---------------------------------------------------------
# kitty (terminal) - command completion setup
# ---------------------------------------------------------
# autoload -Uz compinit
# compinit
# kitty + complete setup zsh | source /dev/stdin

# ---------------------------------------------------------
# RubyGems environment setup
# ---------------------------------------------------------
# --- Install Ruby Gems to ~/.gem'
# export GEM_HOME="$HOME/.gem"
# export GEM_USER_INSTALLATION="$HOME/.gem/ruby/2.5.0"
# export GEM_SPEC_CACHE="$HOME/.gem/specs"
# export PATH="$HOME/.gem/bin:$PATH"

# ---------------------------------------------------------
# Minishift shell configuration
# ---------------------------------------------------------
# eval $(minishift oc-env)
# source <(oc completion zsh)

