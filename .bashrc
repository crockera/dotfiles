#
# ~/.bashrc
#


# prompt
PS1='[\u@\h \W]\$ '


# aliases
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias ll='ls -Lh'
alias la='ls -la'


# colored man pages
man() {
	LESS_TERMCAP_md=$'\e[01;31m' \
	LESS_TERMCAP_me=$'\e[0m' \
	LESS_TERMCAP_se=$'\e[0m' \
	LESS_TERMCAP_so=$'\e[01;44;33m' \
	LESS_TERMCAP_ue=$'\e[0m' \
	LESS_TERMCAP_us=$'\e[01;32m' \
	command man "$@"
}


# source-highlight - code syntax coloring in less
export LESSOPEN="| /usr/bin/source-highlight-esc.sh %s"
export LESS='-R '


# ----------------------------------------------------
# environment variables and exports
# ----------------------------------------------------

# XDG Config Directory
if [[ -d ~/.config ]]; then
	export XDG_CONFIG_HOME=$HOME/.config
fi

# include user bin directory in PATH
if [[ -d ~/bin ]]; then
	export PATH=$HOME/bin:$PATH
fi

# node version manager
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

