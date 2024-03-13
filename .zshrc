# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

########################
# Antidote
########################

# Source antidote.
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh
source ~/.theme

# set omz variables
#ZSH=$(antidote path ohmyzsh/ohmyzsh)
#ZSH_CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/oh-my-zsh"
#[[ -d $ZSH_CACHE_DIR ]] || mkdir -p $ZSH_CACHE_DIR

autoload -Uz compinit && compinit

antidote load

bindkey '\eOA' history-substring-search-up
bindkey '\eOB' history-substring-search-down
HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1

# Add your project directory to cdpath
typeset -U path cdpath fpath
setopt auto_cd

# Change this to your project path
cdpath=($HOME/Documents/projects)

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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# rosetta terminal setup
if [ $(arch) = "i386" ]; then
    alias python="/usr/local/bin/python3"
    alias brew86='/usr/local/bin/brew'
    alias pyenv86="arch -x86_64 pyenv"
    alias func="/usr/local/Cellar/azure-functions-core-tools@4/4.0.4785/func"
fi

export GOPATH=$HOME/Documents/projects
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
