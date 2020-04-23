#===============================================================================
# Virtual Environment Aliases
#===============================================================================

alias va='source venv/bin/activate'
alias vmk='python3.6 -m venv venv'

#===============================================================================
# Try to use Neovim everywhere vim would be used.
#===============================================================================

alias vim=nvim
alias vi=nvim

#===============================================================================
# Entr
#===============================================================================

alias entr_mypy='find . -iname "*.py" | entr -p mypy --ignore-missing-imports /_'

#===============================================================================
# Git
#===============================================================================

alias gs='git status'
alias gd='git diff'
alias gf='git fetch'
alias gu='git diff --name-only --diff-filter=U'

alias gcd='git checkout develop'
alias gc='git --no-pager diff --name-only --diff-filter=U --relative'
alias gb='git --no-pager branch'
alias gbr='git checkout $(git branch | fzf | tr -d "*")'

#===============================================================================
# Python
#===============================================================================

alias psh='pipenv shell'
alias pydoc='python -m pydoc'
alias sympyversion='python -c "import sympy; print(sympy.__version__)"'
alias mypy='mypy --follow-imports skip --ignore-missing-imports'
alias pytestw='pyfiles | entr -c python -m pytest -s '


#===============================================================================
# Operating System
#===============================================================================

# When the sound doesn't work
alias killcoreaudio='ps aux | grep /usr/sbin/coreaudiod | awk "{print $2}" | sudo xargs kill -9'

#===============================================================================
# Directory Listing
#===============================================================================

alias lls='ls -lrS'
alias llt='ls -lrt'

#===============================================================================
# Concentration
#===============================================================================

alias noise='play -q -n synth brownnoise'
alias quiet='killall play'

#===============================================================================
# Global Aliases
#===============================================================================

alias -g L='| less'
alias -g G='| grep'
alias -g Z='| fzf'
alias -g T='| tee'

#===============================================================================
# Zshell Aliases
#===============================================================================

alias reloadz='source ~/.zshrc'

#===============================================================================
# Homebrew
#===============================================================================

alias brewup='brew update && brew upgrade'
