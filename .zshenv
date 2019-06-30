# This script is for setting environment variables ONLY.
# It is run before anything else during any zsh invocation.
# That includes both interactive and login shells.

# set PATH so it includes user's private bin if it exists
# if [[ -d $HOME/bin && $PATH != *$HOME/bin* ]] ; then
#     PATH="$HOME/bin:$PATH"
# fi
# PATH="$HOME/shit:$PATH"
# 
# TERMINAL_EMULATOR="xfce4-terminal"
# BROWSER="firefox"
# EDITOR="nvim"
# VISUAL="emacs"
