#!/usr/bin/env bash

# Homebrew is very nice
case "$(uname)" in
  Linux*)
    export HOMEBREW="/home/linuxbrew/.linuxbrew"
    ;;
  Darwin*)
    export HOMEBREW="/usr/local"
    ;;
  *)
    export HOMEBREW="$(brew --prefix)"
    ;;
esac
export HOMEBREW_BASH="$HOMEBREW/etc/bash_completion.d"
export HOMEBREW_NO_ANALYTICS=true
export HOMEBREW_NO_GOOGLE_ANALYTICS=true
export HOMEBREW_NO_INSTALL_CLEANUP=true
[ -e "$HOMEBREW/etc/profile.d/bash_completion.sh" ] && source "$HOMEBREW/etc/profile.d/bash_completion.sh"
[ -e "$HOMEBREW_BASH/brew" ] && source "$HOMEBREW_BASH/brew"

# ECMAScript is pain, We should only need NPM... should;
# But it is a very bad, no good, package manager;
# Yarn improved things, PNPM is even better;
# A person may be smart, but people are stupid;
# A new tool is created to solve a problem that an
# established tool has, but not everyone uses the new one,
# And so cycle moves on... an ever rotating cycle
# of badness and hatred that can only only be fixed
# when Node/NPM devs realise that their software
# is complete garbage and they need to copy
# Deno's and Bun's highly integrated style of
# feature implementation... or atleast, one can hope...
[ -e "$HOMEBREW_BASH/node" ] && source "$HOMEBREW_BASH/node"
[ -e "$HOMEBREW_BASH/deno" ] && source "$HOMEBREW_BASH/deno"
[ -e "$HOMEBREW_BASH/npm"  ] && source "$HOMEBREW_BASH/npm"
[ -e "$HOMEBREW_BASH/yarn" ] && source "$HOMEBREW_BASH/yarn"
[ -e "$HOMEBREW_BASH/pnpm" ] && source "$HOMEBREW_BASH/pnpm"

# Container env
export DOCKER_CONFIG="$HOME/.config/docker"
[ -e "$HOMEBREW_BASH/docker" ]    && source "$HOMEBREW_BASH/docker"
[ -e "$HOMEBREW_BASH/whalebrew" ] && source "$HOMEBREW_BASH/whalebrew"

# Misc
export RANGER_LOAD_DEAFULT_RC=true
export HTOPRC="$HOME/.config/htop/htoprc"
export LYNX_CFG_PATH="$HOME/.config/lynx.cfg"
export FFMPEG_DATADIR="$HOME/.config/ffmpeg"
[ -e "$HOMEBREW_BASH/tmux" ] && source "$HOMEBREW_BASH/tmux"

# Define location & path
export PATH="$HOMEBREW/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="$HOMEBREW/opt/binutils/libexec/gnubin:$PATH"
export PATH="$HOMEBREW/opt/inetutils/libexec/gnubin:$PATH"
export PATH="$HOMEBREW/opt/findutils/libexec/gnubin:$PATH"
export PATH="$HOMEBREW/opt/diffutils/libexec/gnubin:$PATH"
export PATH="$HOMEBREW/opt/moreutils/libexec/gnubin:$PATH"
export PATH="$HOMEBREW/opt/coreutils/libexec/gnubin:$PATH"
export PATH="$HOMEBREW/bin:$PATH"
export PATH="$HOMEBREW/sbin:$PATH"

export SHELL="bash"
export EDITOR="nvim"
export VISUAL="nvim"
export PAGER="less"

alias list="exa --all --group-directories-first --long --no-user --octal-permissions --no-permissions --extended --git --ignore-glob .git"

# Define shell prompt && git vars
[ -e "$HOMEBREW_BASH/git-prompt.sh" ]       && source "$HOMEBREW_BASH/git-prompt.sh"
[ -e "$HOMEBREW_BASH/git-completion.bash" ] && source "$HOMEBREW_BASH/git-completion.bash"

[ -e "$HOMEBREW_BASH/gh"   ] && source "$HOMEBREW_BASH/gh"
[ -e "$HOMEBREW_BASH/glab" ] && source "$HOMEBREW_BASH/glab"
[ -e "$HOMEBREW_BASH/tea"  ] && source "$HOMEBREW_BASH/tea"

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
