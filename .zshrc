# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/bin/flutter/bin:$PATH
export PATH="$PATH":"$HOME/.pub-cache/bin"
export EDITOR=e

# Path to your oh-my-zsh installation.
export ZSH="/Users/STEWTJ3/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# For configuration options see:
# https://github.com/caiogondim/bullet-train.zsh
ZSH_THEME="bullet-train"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

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
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  zsh-syntax-highlighting
  git
  brew
  httpie
  osx
  pep8
  pyenv
  pylint
  python
  tmux
)

source $ZSH/oh-my-zsh.sh

. /usr/local/etc/profile.d/z.sh

function ep() {
	e $(find . -iname '*.py' | grep -v /venv/ | fzf)
}

export GOPATH=~/go
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:${GOPATH}/bin
export PATH=~/.local/bin:~/scripts:$PATH

# Virtual Environment Aliases
alias va='source venv/bin/activate'
alias vmk='python3.6 -m venv venv'

# Try to use Neovim everywhere vim would be used.
alias vim=nvim
alias vi=nvim

# Activates Chrome Tab with URL or opens a new tab.
function browse_url() {
    url="$1" osascript -se ~/scripts/select_tab_by_url.scpt
}

# Open web browser links
# ======================

# All PRs for Turing
alias prs='browse_url "https://github.com/doberman/pearson-turing/pulls"'
# All PRs I created
alias prsm='browse_url "https://github.com/doberman/pearson-turing/pulls/timjstewart"'
# All PRs Waiting for me
alias prsw='browse_url "https://github.com/doberman/pearson-turing/pulls/review-requested/timjstewart"'
# Go to the asana Math Engine Kanban board.
alias asana='browse_url "https://app.asana.com/0/1118949317972979/board"'
# Go to the RAPS system.
alias raps='browse_url "http://34.83.31.248/admin/"'
# Go to my calendar
alias gcal='browse_url "https://calendar.google.com/calendar/r/week"'
# Go to my mail
alias gmail='browse_url "https://gmail.com"'

# Entr
# ====
alias entr_mypy='find . -iname "*.py" | entr -p mypy --ignore-missing-imports /_'

export HOMEBREW_GITHUB_API_TOKEN=21b27afe642bf1c2091ba338668856cdd33229a8

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/STEWTJ3/bin/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/STEWTJ3/bin/google-cloud-sdk/completion.zsh.inc'; fi

setopt auto_cd
cdpath=(. $HOME/src)

# Install fasd hooks.  Seems to be a bit slow but it might be worth it.
eval "$(fasd --init auto)"
export PATH="/usr/local/sbin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
