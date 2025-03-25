# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/mashed/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# [Ctrl-RightArrow] - move forward one word
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fs='yazi'

# Wine prefix
export WINEPREFIX="$HOME/.local/share/wineprefixes/BlueProtocol"
export WINEDEBUG=+loaddll,+warn

fastfetch
