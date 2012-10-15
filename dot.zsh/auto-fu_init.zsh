# auto-fu.zsh
if [ -f ~/.zsh/auto-fu.zsh/auto-fu.zsh ]; then
  source ~/.zsh/auto-fu.zsh/auto-fu.zsh
  function zle-line-init () {
  auto-fu-init
  }
  zle -N zle-line-init
  zle -N zle-keymap-select auto-fu-zle-keymap-select
  zstyle ':auto-fu:highlight' input bold
  zstyle ':auto-fu:highlight' completion fg=white,dim
  zstyle ':auto-fu:highlight' completion/one fg=blue,dim
  zstyle ':auto-fu:var' postdisplay ''
  zstyle ':auto-fu:var' track-keymap-skip opp
fi

# auto-fuをカスタマイズする。
# ## Enterを押したときは自動補完された部分を利用しない。
afu+cancel-and-accept-line() {
((afu_in_p == 1)) && { afu_in_p=0; BUFFER="$buffer_cur" }
zle afu+accept-line
}
zle -N afu+cancel-and-accept-line
bindkey -M afu "^M" afu+cancel-and-accept-line
