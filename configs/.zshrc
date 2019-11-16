########################
# Antigen
########################
source ~/.antigen/antigen.zsh
source ~/.theme

antigen use oh-my-zsh
antigen bundle StackExchange/blackbox
antigen bundle brew
antigen bundle command-not-found
antigen bundle common-aliases
antigen bundle docker
antigen bundle docker-compose
antigen bundle kube-ps1
antigen bundle dbz/kube-aliases
antigen bundle git
antigen bundle golang
antigen bundle npm
antigen bundle nvm
antigen bundle python
antigen bundle tmux
antigen theme bhilburn/powerlevel9k powerlevel9k
antigen apply

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
