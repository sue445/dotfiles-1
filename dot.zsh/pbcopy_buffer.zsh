# Ctrl + Yでプロンプトの入力をクリップボードにコピーする


pbcopy-buffer(){
    print -rn $BUFFER | pbcopy
}

zle -N pbcopy-buffer
bindkey '^Y' pbcopy-buffer
