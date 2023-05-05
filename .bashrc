#!/usr/bin/bash

# Default config - Debian-based
source "$HOME/.dotfiles/bash/debian.sh"

# Define autocompletion
# TODO: look into brwe autocompletion feat

# Define location vars
export HOMEBREW="/home/linuxbrew/.linuxbrew"
export CARGO_HOME="$HOME/.cargo"
export WASMER_DIR="$HOME/.wasmer"
export WASMER_CACHE_DIR="$WASMER_DIR/cache"
export NVM_DIR="$HOME/.nvm"
export DVM_DIR="$HOME/.dvm"
export DENO_INSTALL="$HOME/.deno"

export PATH="$DENO_INSTALL/bin:$PATH"
export PATH="$DVM_DIR/bin:$PATH"
export PATH="$WASMER_DIR/globals/wapm_packages/.bin:$PATH"
export PATH="$WASMER_DIR/bin:$PATH"
export PATH="$CARGO_HOME/bin:$PATH"
export PATH="$HOMEBREW/bin:$PATH"
export PATH="$HOMEBREW/sbin:$PATH"

# Define bin vars
export EDITOR="nvim"
export VISUAL="vi"
export PAGER="less"

# Define xdg_config vars
export RANGER_LOAD_DEAFULT_RC=true
export HTOPRC="$HOME/.config/htop/htoprc"

# Define git vars
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_STATESEPARATOR=" "
GIT_PS1_COMPRESSSPARSESTATE=true
GIT_PS1_SHOWCONFLICTSTATE="yes"
GIT_PS1_DESCRIBE_STYLE="default"
GIT_PS1_SHOWCOLORHINTS=true

# Define shell prompt
PROMPT_TEXT="\[\033[01;34m\]\W\[\033[00m\]"
PS1='$PROMPT_TEXT$(__git_ps1 " (%s)") → '
PROMPT_COMMAND='__git_ps1 "$PROMPT_TEXT" " "'
