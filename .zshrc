# Set up the prompt
export TERM="xterm-256color"

autoload -U colors
autoload -Uz vcs_info
colors

zstyle ':vcs_info:*' enable git
precmd() {
    vcs_info
}
setopt prompt_subst

#autoload -Uz promptinit
#promptinit
#prompt elite 
PROMPT='%{$fg[green]%}┌%n@%m '%1d' [%j] ${vcs_info_msg_0_}%
└>%{$reset_color%} '
RPROMPT=""

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

#version control formatting
zstyle ':vcs_info:git*' formats '(%b)'
zstyle ':vcs_info:git*' actionformats '(%b)'
zstyle ':vcs_info:git*' branchformats '(%b)'

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


if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
if [ -d ~/.scripts ]; then
    #source {path to file to include}
fi

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

setopt INTERACTIVE_COMMENTS
