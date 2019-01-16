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

# Variables
WORDCHARS=""
[[ $PATH == *$HOME/bin:* ]] || PATH="${HOME}/bin:$PATH"

# Options
setopt extended_glob interactivecomments

# Command Prompt

autoload colors
colors

PS1="%{${fg[black]}${bg[blue]}%}%n@%m%#%{${fg[default]}${bg[default]}%} "
RPS1="%{${fg[blue]}%}%~%{${fg[default]}%}"

alias ls='ls --color=auto'

# zmv, zcp, zln
autoload -Uz zmv
alias zcp='zmv -C'
alias zln='zmv -L'

# ALIASES

MY_BIN=$HOME/apps

alias 0-vlc='screen -dmS vlc vlc'
alias 0-2vlc='screen -dmS vlc vlc' 
# Different Firefox versions
alias 0-ffe='screen -dmS ffe $MY_BIN/firefox-esr/firefox -no-remote -P esr' # Extended support release
alias 0-ffc='screen -dmS ffc $MY_BIN/firefox-cur/firefox -no-remote -P cur' # Current branch
alias 0-ffd='screen -dmS ffd $MY_BIN/firefox-dev/firefox -no-remote -P dev' # Developer edition
# Other
alias 0-thunderbird='screen -dmS thunderbird $MY_BIN/thunderbird/thunderbird' # Thunderbird
alias 0-blender='echo "Blender is not set up."' # Blender
alias 0-krita='screen -dmS krita $MY_BIN/appimages/krita-4.1.7-x86_64.appimage' # Krita
# Flatpak
alias 0-gimp='screen -dmS gimp flatpak run org.gimp.GIMP/x86_64/stable' # GIMP
alias 0-inkscape='screen -dmS inkscape flatpak run org.inkscape.Inkscape/x86_64/stable' # Inkscape
alias 0-scribus='screen -dmS scribus flatpak run net.scribus.Scribus/x86_64/stable' # Scribus
alias 0-mypaint='screen -dmS mypaint flatpak run org.mypaint.MyPaint/x86_64/stable' # MyPaint

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh # Fish-style syntax highlighting
