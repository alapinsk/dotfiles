# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# need to disable in order for exa ls alias to work
DISABLE_LS_COLORS="true"

# FZF settings
export FZF_BASE="$HOME/.fzf"
export FZF_DEFAULT_COMMAND='rg --hidden --no-ignore --files -g "!.git/"'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

ZSH_THEME="robbyrussell"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=244"

# plugins
plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
    fzf
    zsh-z
)

# aliases
alias python=python3

alias fp="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"

alias gt='starship toggle gcloud disabled'

source $ZSH/oh-my-zsh.sh

# set starship as prompt
eval "$(starship init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
