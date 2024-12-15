# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

alias reload-zsh="source ~/.zshrc"
alias edit-zsh="nvim ~/.zshrc"

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history 
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify


bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward
# this is the end of the .zshrc and the only thing below should be neofetch

# this loads syntax highlighting and zsh-autosuggestions 
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh


# alliasing eza as ls with differnent ls flags

alias ls="eza --color=auto --no-filesize --icons=auto --no-time"

alias cd="z"

alias du="du -h"

eval "$(zoxide init zsh)"
function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
alias fman="compgen -c | fzf | xargs man"
alias fub="du -ah . | sort -hr | head -n  10"

export EDITOR=nvim
export VISUAL="$EDITOR"
fastfetch
