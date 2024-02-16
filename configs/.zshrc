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

# Replace original ls commands with eza alternatives
alias ls='eza --group-directories-first --classify'
alias l='eza --group-directories-first --classify'
alias la='eza -a --group-directories-first --classify'
alias ll='eza -l --group-directories-first --classify'
alias lla='eza -al --group-directories-first --classify'
alias lal='eza -al --group-directories-first --classify'
alias lt='eza -T --group-directories-first --classify'
alias lta='eza -aT --group-directories-first --classify'
alias lat='eza -aT --group-directories-first --classify'

alias c='code-insiders'
alias docker=podman
