#!/usr/bin/bash

#==============================================================================
#
# Select base config - Default: Debain
#
#==============================================================================

source "$HOME/.dotfiles/bash/debian.sh"

#==============================================================================
#
# Define location & path vars
#
#==============================================================================

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export HOMEBREW="/home/linuxbrew/.linuxbrew"
export HOMEBREW_BASH="$HOMEBREW/etc/bash_completion.d"
export HOMEBREW_NO_ANALYTICS=true
export HOMEBREW_NO_GOOGLE_ANALYTICS=true
export HOMEBREW_NO_INSTALL_CLEANUP=true
[ -e "$HOMEBREW/etc/profile.d/bash_completion.sh" ] && source "$HOMEBREW/etc/profile.d/bash_completion.sh"
[ -e "$HOMEBREW/etc/bash_completion.d/brew" ]       && source "$HOMEBREW/etc/bash_completion.d/brew"

export WGETRC="$XDG_CONFIG_HOME/wgetrc"

export RUSTUP_HOME="$XDG_DATA_HOME/RUSTUP_HOME"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
export WASMER_DIR="$XDG_DATA_HOME/wasmer"
export WASMER_CACHE_DIR="$WASMER_DIR/cache"

export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export MACHINE_STORAGE_PATH="$XDG_DATA_HOME/docker-machine"
[ -e "$HOMEBREW/etc/bash_completion.d/whalebrew" ] && source "$HOMEBREW/etc/bash_completion.d/whalebrew"

[ -e "$HOMEBREW_BASH/git-prompt.sh" ]     && source "$HOMEBREW_BASH/git-prompt.sh"
[ -e "$HOMEBREW_BASH/git-completion.sh" ] && source "$HOMEBREW_BASH/git-completion.sh"

[ -e "$HOMEBREW_BASH/gh" ]   && source "$HOMEBREW_BASH/gh"
[ -e "$HOMEBREW_BASH/gh" ]   && source "$HOMEBREW_BASH/gh"
[ -e "$HOMEBREW_BASH/glab" ] && source "$HOMEBREW_BASH/glab"
[ -e "$HOMEBREW_BASH/tea" ]  && source "$HOMEBREW_BASH/tea"

export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export NVM_DIR="$XDG_DATA_HOME/nvm"
export NI_CONFIG_FILE="$XDG_CONFIG_HOME/ni/nirc"
[ -e "$HOMEBREW/opt/nvm/nvm.sh" ] && source "$HOMEBREW/opt/nvm/nvm.sh"
[ -e "$HOMEBREW_BASH/npm" ]  && source "$HOMEBREW_BASH/npm"
[ -e "$HOMEBREW_BASH/nvm" ]  && source "$HOMEBREW_BASH/nvm"
[ -e "$HOMEBREW_BASH/yarn" ] && source "$HOMEBREW_BASH/yarn"
[ -e "$HOMEBREW_BASH/pnpm" ] && source "$HOMEBREW_BASH/pnpm"

export RANGER_LOAD_DEAFULT_RC=true
export HTOPRC="$XDG_CONFIG_HOME/htop/htoprc"
[ -e "$HOMEBREW/etc/bash_completion.d/tmux" ] && source "$HOMEBREW/etc/bash_completion.d/tmux"

export PATH="$WASMER_DIR/globals/wapm_packages/.bin:$PATH"
export PATH="$WASMER_DIR/bin:$PATH"
export PATH="$CARGO_HOME/bin:$PATH"
export PATH="$HOMEBREW/bin:$PATH"
export PATH="$HOMEBREW/sbin:$PATH"

#==============================================================================
#
# Define bin vars
#
#==============================================================================

export SHELL="bash"
export EDITOR="nvim"
export VISUAL="nvim"
export PAGER="less"

#==============================================================================
#
# Define prompt  & git vars
#
#==============================================================================

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_STATESEPARATOR=" "
GIT_PS1_COMPRESSSPARSESTATE=true
GIT_PS1_SHOWCONFLICTSTATE="yes"
GIT_PS1_DESCRIBE_STYLE="default"
GIT_PS1_SHOWCOLORHINTS=true

GIT_COMPLETION_CHECKOUT_NO_GUESS=1
GIT_COMPLETION_SHOW_ALL_COMMANDS=1
GIT_COMPLETION_SHOW_ALL=1
GIT_COMPLETION_IGNORE_CASE=1

PROMPT_TEXT="\[\033[01;34m\]\W\[\033[00m\]"
PROMPT_COMMAND='__git_ps1 "$PROMPT_TEXT" " "'
