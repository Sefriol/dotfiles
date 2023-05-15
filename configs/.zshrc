########################
# Antidote
########################

# Source antidote.
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh
source ~/.theme

autoload -Uz compinit && compinit

antidote load

bindkey '\eOA' history-substring-search-up
bindkey '\eOB' history-substring-search-down
HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1

# Add your project directory to cdpath
typeset -U path cdpath fpath
setopt auto_cd

# Change this to your project path
cdpath=($HOME/)

zstyle ':completion:*' group-name ''
zstyle ':completion:*:descriptions' format %d
zstyle ':completion:*:descriptions' format %B%d%b
zstyle ':completion:*:complete:(cd|pushd):*' tag-order \
        'local-directories named-directories'

# Replace original ls commands with exa alternatives
alias ls='exa --group-directories-first --classify'
alias l='exa --group-directories-first --classify'
alias la='exa -a --group-directories-first --classify'
alias ll='exa -l --group-directories-first --classify'
alias lla='exa -al --group-directories-first --classify'
alias lal='exa -al --group-directories-first --classify'
alias lt='exa -T --group-directories-first --classify'
alias lta='exa -aT --group-directories-first --classify'
alias lat='exa -aT --group-directories-first --classify'

alias c='code-insiders'
alias docker=podman