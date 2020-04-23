
# vim: filetype=sh

# Some of these functions were taken from:
# https://github.com/junegunn/fzf/wiki/examples#git
function ep() {
	e $(find . -iname '*.py' | grep -v /venv/ | fzf)
}

#===============================================================================
# Git
#===============================================================================

gfco() {
  local branches branch
  branches=$(git --no-pager branch -vv) &&
  branch=$(echo "$branches" | fzf +m) &&
  git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}

fshow() {
  git log --graph --color=always \
      --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |
  fzf --ansi --no-sort --reverse --tiebreak=index --bind=ctrl-s:toggle-sort \
      --bind "ctrl-m:execute:
                (grep -o '[a-f0-9]\{7\}' | head -1 |
                xargs -I % sh -c 'git show --color=always % | less -R') << 'FZF-EOF'
                {}
FZF-EOF"
}

# From: https://revelry.co/terminal-workflow-fzf/
gf_() {
  git -c color.status=always status --short |
  fzf --height 50% --border --ansi -multi --ansi --nth 2..,.. \
    --preview '(git diff --color=always -- {-1} | sed 1,4d; cat {-1}) | head -500' |
  cut -c4- | sed 's/.* -> //'
}


# tm - create new tmux session, or switch to existing one. Works from within tmux too. (@bag-man)
# `tm` will allow you to select your tmux session via fzf.
# `tm irc` will attach to the irc session (if it exists), else it will create it.

tm() {
  [[ -n "$TMUX" ]] && change="switch-client" || change="attach-session"
  if [ $1 ]; then
    tmux $change -t "$1" 2>/dev/null || (tmux new-session -d -s $1 && tmux $change -t "$1"); return
  fi
  session=$(tmux list-sessions -F "#{session_name}" 2>/dev/null | fzf --exit-0) &&  tmux $change -t "$session" || echo "No sessions found."
}

function ep() {
	e $(find . -iname '*.py' | grep -v /venv/ | fzf)
}

# Activates Chrome Tab with URL or opens a new tab.
function browse_url() {
    url="$1" osascript -se ~/scripts/select_tab_by_url.scpt
}

prompt_context() {}

