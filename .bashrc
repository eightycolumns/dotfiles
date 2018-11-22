source "${HOME}/lib/path.sh"

export PS1="[\u@\h \W]$ "

unalias -a

alias cp='cp --interactive'
alias emacs='emacs --color=never --no-window-system'
alias mv='mv --interactive'
alias pip='pip3'
alias play='sndfile-play'
alias python='python3'
alias rm='rm --interactive'
alias tmux='tmux -2'

stty -ixon

decolorize() {
  local -r color_code='\e\[[0-9;]\+m'
  sed "s/${color_code}//g"
}

export -f decolorize

tree() {
  local -r ignore_dirs='.git|node_modules'
  "$(which tree)" -a --charset ascii -I "${ignore_dirs}" -n "$@"
}

export -f tree

export SDKMAN_DIR="${HOME}/.sdkman"
source "${SDKMAN_DIR}/bin/sdkman-init.sh"

append_to_path "${HOME}/spring-2.1.9.RELEASE/bin"

export NVM_DIR=${HOME}/.nvm
source "${NVM_DIR}/nvm.sh"
source "${NVM_DIR}/bash_completion"
nvm use --lts > /dev/null

append_to_path "${HOME}/.rbenv/bin"
append_to_path "${HOME}/.rbenv/shims"

source <(kubectl completion bash)

export CHROME_BIN=google-chrome

append_to_path '/usr/local/concourse/bin'

prepend_to_path "${HOME}/bin"
