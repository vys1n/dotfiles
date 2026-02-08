# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


setopt HIST_VERIFY
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_DUPS


zstyle ':omz:update' mode auto
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'


bindkey -s '^F' '~/scripts/tmux-sessionizer.sh\n'


# LS_COLORS="di=01;36:ln=01;35:ex=01;32:so=01;33:pi=33:bd=33:cd=33:or=01;31:mi=01;31:"
# LS_COLORS+="ow=01;36:tw=01;36:st=01;36:"
#
# # Archives
# LS_COLORS+="*.tar=01;31:*.tgz=01;31:*.gz=01;31:*.zip=01;31:*.7z=01;31:*.rar=01;31:"
#
# # Images
# LS_COLORS+="*.jpg=01;35:*.jpeg=01;35:*.png=01;35:*.gif=01;35:*.svg=01;35:"
#
# # Video
# LS_COLORS+="*.mp4=01;35:*.mkv=01;35:*.webm=01;35:*.avi=01;35:"
#
# export LS_COLORS


alias vim="nvim"
alias vi="nvim"

alias ll="ls -AvlF"
alias l="ls -lv"

alias ..="cd .."
alias ...="cd ../.."

alias update="sudo apt update && sudo apt upgrade"

alias vifzf='nvim $(fzf --preview="bat --color=always {}")'

alias py="python3"
alias python="python3"

alias logout="gnome-session-quit --logout"



# User local bin
export PATH="$HOME/.local/bin:$PATH"

# NVM
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

# Java
export JAVA_HOME="$(dirname $(dirname $(readlink -f $(which java))))"
export PATH="$JAVA_HOME/bin:$PATH"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d "$PYENV_ROOT/bin" ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# Go
export PATH="$PATH:/usr/local/go/bin"

# System local bin (kept last for priority balance)
export PATH="/usr/local/bin:$PATH"
