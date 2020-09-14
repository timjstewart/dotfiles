# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt autocd

bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tim/.zshrc'

autoload -Uz compinit
compinit

alias vim=nvim
alias vi=vim

bindkey "^P" up-line-or-history
bindkey "^R" history-incremental-search-backward

export PATH=$PATH:$HOME/.local/bin
export FZF_DEFAULT_COMMAND='rg --files' fzf
