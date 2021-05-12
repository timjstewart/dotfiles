export DISABLE_AUTO_TITLE='true'
export EDITOR=nvim
export GOPATH=~/go
export PYENV_ROOT="$HOME/.pyenv"

export FZF_DEFAULT_COMMAND='ag --hidden --ignore tags --ignore .git --ignore venv -g ""'
export FZF_DEFAULT_OPTS="
--layout=reverse
--info=inline
--height=80%
--multi
--preview '([[ -f {} ]] && (bat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200'
--color='hl:148,hl+:154,pointer:032,marker:010,bg+:237,gutter:008'
--prompt='∼ ' --pointer='▶' --marker='✓'
--bind '?:toggle-preview'
--bind 'ctrl-a:select-all'
--bind 'ctrl-y:execute-silent(echo {+} | pbcopy)'
--bind 'ctrl-e:execute(echo {+} | xargs -o vim)'
--bind 'ctrl-v:execute(code {+})'
"

export NVIM_LISTEN_ADDRESS=/tmp/nvimsocket nvim

export HOMEBREW_GITHUB_API_TOKEN=995bc57a89308f9a71d661ee95c7b515327b6893
