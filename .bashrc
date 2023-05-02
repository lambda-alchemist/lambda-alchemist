#!/usr/bin/bash

# Default config - Debian-based
source "$HOME/.dotfiles/sh/bash/debian.sh"

# Define autocompletion
source "$HOME/.dotfiles/sh/bash/npm.sh"
source "$HOME/.dotfiles/sh/bash/nvm.sh"
source "$HOME/.dotfiles/sh/bash/deno.sh"
source "$HOME/.dotfiles/sh/bash/dvm.sh"
source "$HOME/.dotfiles/sh/bash/supa.sh"
source "$HOME/.dotfiles/sh/bash/rustup.sh"
source "$HOME/.dotfiles/sh/bash/cargo.sh"

# Define utils
source "$HOME/.dotfiles/sh/git.sh"
source "$HOME/.dotfiles/sh/nvm.sh"
source "$HOME/.dotfiles/sh/util.sh"

# Define location vars
export HOMEBREW="/home/linuxbrew/.linuxbrew"
export CARGO_HOME="$HOME/.cargo"
export NVM_DIR="$HOME/.nvm"
export DVM_DIR="$HOME/.dvm"
export DENO_INSTALL="$HOME/.deno"
export PATH="$HOMEBREW/bin:$CARGO_HOME/bin:$DENO_INSTALL/bin:$DVM_DIR/bin:$PATH"

# Define bin vars
export EDITOR="nvim"
export VISUAL="vi"
export PAGER="less"

# Define xdg_config vars
export RANGER_LOAD_DEAFULT_RC=true
export HTOPRC="$HOME/.config/htop/htoprc"

# Define git prompt vars
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
