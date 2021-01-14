source "${HOME}/.local/lib/path.sh"

export PS1="[\u@\h \W]$ "

unalias -a

alias cp='cp -i'
alias emacs='emacs --color=never --no-window-system'
alias mv='mv -i'
alias play='sndfile-play'
alias rm='rm -i'
alias tmux='tmux -2'
alias youtube-dl='youtube-dl --extract-audio --audio-format mp3'

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

prepend_to_path "${HOME}/.local/bin"
