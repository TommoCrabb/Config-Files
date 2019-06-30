####################
### DEFAULT SHIT ###
####################

# Set up the prompt

# autoload -Uz promptinit
# promptinit
# prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

###############
### MY SHIT ###
###############

# TEXT NAVIGATION
# Getting ZSH to emulate the way BASH moves backwards and forwards in text is easier said than done.
# There are two main options...
#
# 1:
WORDCHARS=""
#
# 2:
# autoload -U select-word-style
# select-word-style bash
#
# ... Neither of these mimic BASH EXACTLY
# Will probably have to overwrite the function "forward-word-match"

# PATH VARIABLE
# Better to set this elsewhere?
# [[ $PATH == *$HOME/bin:* ]] || PATH="${HOME}/bin:$PATH"

# OPTIONS
setopt extended_glob interactivecomments no_auto_remove_slash force_float glob_star_short

# FUNCTIONS
autoload -Uz zed zargs zcalc regexp-replace run-help

# COMMAND PROMPT
autoload -Uz colors
colors
PS1="%{${fg[black]}${bg[blue]}%}%n@%m%#%{${fg[default]}${bg[default]}%} "
RPS1="%{${fg[blue]}%}%~%{${fg[default]}%}"

# ZMV, ZCP, ZLN
autoload -Uz zmv
alias zcp='zmv -C'
alias zln='zmv -L'

# ALIASES
alias ls='ls --color=auto'

# EXTENSIONS
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh # Fish-style syntax highlighting
