#!/usr/bin/env bash

# Define location & path
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:="$HOME/.config"}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:="$HOME/.cache"}"
export XDG_DATA_HOME="${XDG_DATA_HOME:="$HOME/.local/share"}"
export XDG_STATE_HOME="${XDG_STATE_HOME:="$HOME/.local/state"}"
export XDG_CONFIG_DIRS="/etc/xdg"
export XDG_DATA_DIRS="/usr/local/share:/usr/share"

export PATH="/usr/games:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
export PATH="$HOME/.local/games:$HOME/.local/bin:$HOME/bin:$PATH"

# Improved Bash
export HISTFILE="$XDG_STATE_HOME/bash/history"
export HISTCONTROL="ignoreboth"
export HISTSIZE="10000"
export HISTFILESIZE="10000"

shopt -s histappend
shopt -s checkwinsize

if [[ -f "/usr/share/bash-completion/bash_completion" ]]; then
	source "/usr/share/bash-completion/bash_completion"
elif [[ -f "/etc/bash_completion" ]]; then
	source "/etc/bash_completion"
fi

# Auto colored output
if command -v dircolors > /dev/null; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"

	alias ls='ls --color=auto'
	alias dir='dir --color=auto'
	alias vdir='vdir --color=auto'

	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'

	alias diff='diff --color=auto'
fi

# the crypt
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export GPG_TTY="$(tty)"

if command -v gpp-agent > /dev/null; then
	pkill -f gpg-agent
	gpg-agent --daemon --quiet
fi

# Misc
export HTOPRC="$XDG_CONFIG_HOME/htop/htoprc"

export TERMINFO="$XDG_DATA_HOME/terminfo"
export TERMINFO_DIRS="$XDG_DATA_HOME/terminfo:/usr/share/terminfo"

alias lsl="ls -blahs --time-style=long-iso --color=auto"

alias ..="cd .."
alias .2="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."

# Doom
export DOOMWADDIR="$XDG_DATA_HOME/games/doom";
export DOOMWADPATH="$DOOMWADDIR:/usr/local/share/games/doom:/usr/local/share/doom:/usr/share/games/doom:/usr/share/doom";

alias doom1="woof -iwad doom1 -file doom1-midi.wad doom1-sprite.wad -fast"
alias doom2="woof -iwad doom2 -file doom2-midi.wad doom2-sprite.wad -fast"

alias doomsigil1="woof -iwad doom1 -file doom1-sprite.wad sigil1.wad"
alias doomsigil2="woof -iwad doom1 -file doom1-sprite.wad sigil1.wad sigil2.wad"
alias doom0="woof -iwad doom2 -file doom2-sprite.wad doom-zero.wad"
alias doomttp="woof -iwad doom2 -file doom2-sprite.wad ttp.wad"
alias doomnrftl="woof -iwad doom2 -file doom2-sprite.wad nrftl.wad"

# ECMAScript is pain
export NVM_DIR="$XDG_CONFIG_HOME/nvm"

export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"

export PNPM_HOME="$XDG_DATA_HOME/pnpm"
export PATH="$PNPM_HOME:$PATH"

export PNPM_COMPLETION="$XDG_CONFIG_HOME/tabtab/bash"
[[ -e "$PNPM_COMPLETION" ]] && source "$PNPM_COMPLETION/pnpm.bash"

# Lua is very good
if command -v luarocks > /dev/null; then
	eval "$(luarocks path --bin)"
fi

# Whale
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export MACHINE_STORAGE_PATH="$XDG_DATA_HOME/docker-machine"

# I don't need starship or zsh or nothing for my git prompt
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="auto"
export GIT_PS1_STATESEPARATOR=" "
export GIT_PS1_COMPRESSSPARSESTATE=true
export GIT_PS1_SHOWCONFLICTSTATE="yes"
export GIT_PS1_DESCRIBE_STYLE="default"
export GIT_PS1_SHOWCOLORHINTS=true

export GIT_COMPLETION_CHECKOUT_NO_GUESS=1
export GIT_COMPLETION_SHOW_ALL_COMMANDS=1
export GIT_COMPLETION_SHOW_ALL=1
export GIT_COMPLETION_IGNORE_CASE=1

function git-ignore
{
	curl -fsSL https://www.toptal.com/developers/gitignore/api/$@ > .gitignore
}

function git-license
{
	curl -fsSL https://api.github.com/licenses/$1 | jq -r '.body' > LICENSE
}

PROMPT_COMMAND='__git_ps1 "\[\e[1;34m\]\W\[\e[1;0m\]" " "'

