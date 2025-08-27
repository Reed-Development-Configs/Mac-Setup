#####
# NVM
#####
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

#######
# PYENV
#######
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

#######
# ALIAS
#######
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m '"
alias gco="git checkout "
alias gcob="git checkout -b "
alias tks="tmux kill-server"

############
# PROJECTS #
# ##########