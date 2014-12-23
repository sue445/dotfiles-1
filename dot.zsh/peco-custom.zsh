alias gcd='cd $(ghq list -p | peco)'
alias gh='gh-open $(ghq list -p | peco)'
alias ll='ls -la | peco'
alias tp='top | peco'
alias pt='ps aux  | peco'

function peco-git-grep-vim() {
  vim $(git grep -n --no-color $@ | peco --query "$LBUFFER" | awk -F : '{print "-c " $2 " " $1}')
}

alias ggvim="peco-git-grep-vim"

# peco-ghq-src
function peco-ghq-src () {
  local selected_dir=$(ghq list -p | peco --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
  zle clear-screen
}
zle -N peco-ghq-src
bindkey '^]' peco-ghq-src


# history
setopt hist_ignore_all_dups

function peco_select_history() {
  local tac
  if which tac > /dev/null; then
    tac="tac"
  else
    tac="tail -r"
  fi
  BUFFER=$(fc -l -n 1 | eval $tac | peco --query "$LBUFFER")
  CURSOR=$#BUFFER
  zle clear-screen
}
zle -N peco_select_history
bindkey '^r' peco_select_history

# peco-pkill
function peco-pkill() {
    for pid in `ps aux | peco | awk '{ print $2 }'`
    do
        kill $pid
        echo "Killed ${pid}"
    done
}
alias pk="peco-pkill"


function peco-cd-gem() {
  local gem_name=$(bundle list | sed -e 's/^ *\* *//g' | peco | cut -d \  -f 1)
  if [ -n "$gem_name" ]; then
    local gem_dir=$(bundle show ${gem_name})
    echo "cd to ${gem_dir}"
    cd ${gem_dir}
  fi
}
alias cdgem="peco-cd-gem"

function peco-ssh() {
  local result=$(grep ^Host ~/.ssh/config |awk '{print $2}' |peco)

  if [ -n "$result" ]; then
    \ssh ${result}
  fi
}
alias s="peco-ssh"

function peco-ag-vim () {
  vim $(ag $@ | peco --query "$LBUFFER" | awk -F : '{print "-c " $2 " " $1}')
}
alias agvim="peco-ag-vim"

function peco-git-ls-file-vim() {
  local gvm_file=$(git ls-files | grep $@ |peco --query "$LBUFFER")
  if [ -n "$gvm_file" ]; then
    vim ${gvm_file}
  fi
}
alias gvm="peco-git-ls-file-vim"
