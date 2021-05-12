# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# For configuration options see: https://github.com/caiogondim/bullet-train.zsh
ZSH_THEME=robbyrussell

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime fnction format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  zsh-syntax-highlighting
  zsh-autosuggestions
#  git
  brew
  httpie
  osx
  pep8
  pyenv
  pylint
  python
  tmux
  z
)

setopt auto_cd cdable_vars auto_menu append_history extended_history \
       hist_find_no_dups hist_ignore_all_dups hist_ignore_space hist_reduce_blanks \
       hist_save_no_dups hist_verify aliases vi

cdpath=(. $HOME/src)

autoload -Uz compinit
compinit

zstyle :compinstall filename '/home/tim/.zshrc'


HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
