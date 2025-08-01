# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

bindkey -s '^F' '~/scripts/tmux-sessionizer.sh\n'

zstyle ':omz:update' mode auto

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# PLUGINS
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# ALIASES
alias vim=nvim
alias vi="nvim"

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -l'

# alias gs='git status'
# alias gl='git log --oneline --graph --all'

alias ..='cd ..'
alias ...='cd ../..'

alias update='sudo apt update && sudo apt upgrade'

alias py='python3.13'
alias python='python3.13'
alias python3='python3.13'
alias pip='pip3.13'
alias venv="source .venv/bin/activate"

alias logout="gnome-session-quit --logout"

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
