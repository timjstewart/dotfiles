set -o vi

bindkey -v
bindkey "^R" history-incremental-search-backward

# FROM: https://github.com/b4b4r07/zle-vimode/blob/master/zle-vimode.zsh
bindkey -M viins '^A'  beginning-of-line
bindkey -M viins '^D'  delete-char-or-list
bindkey -M viins '^E'  end-of-line
bindkey -M viins '^F'  forward-char
bindkey -M viins '^H'  backward-delete-char
bindkey -M viins '^K'  kill-line
bindkey -M viins '^N'  down-line-or-history
bindkey -M viins '^P'  up-line-or-history
bindkey -M viins '^R'  history-incremental-pattern-search-backward
bindkey -M viins '^U'  backward-kill-line
bindkey -M viins '^W'  backward-kill-word

# Edit the command line by pressing C-x, C-e.
bindkey '^X^E' edit-command-line

# Select a file to open in vim.
# TODO: use neovim-remote (nvr) command.
bindkey -s '^O' 'nvim -O $(fzf --multi --preview "bat --style=snip --color always {}")^M'
