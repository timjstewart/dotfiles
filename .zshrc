for FN in ~/zsh.d/*.sh ; do
    source "$FN"
done

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(starship init zsh)"

source /Users/STEWTJ3/Library/Preferences/org.dystroy.broot/launcher/bash/br
