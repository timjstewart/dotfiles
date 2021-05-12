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
alias vi=nvim
alias v=nvim

bindkey "^P" up-line-or-history
bindkey "^R" history-incremental-search-backward

export PATH=$PATH:$HOME/.ghcup/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/opam/default/bin
export PATH=$PATH:$HOME/.pub-cache/bin

export FZF_DEFAULT_COMMAND='rg --files' fzf

# opam configuration
test -r /home/tim/.opam/opam-init/init.zsh && . /home/tim/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/tim/.sdkman"
[[ -s "/home/tim/.sdkman/bin/sdkman-init.sh" ]] && source "/home/tim/.sdkman/bin/sdkman-init.sh"
