
alias 😸="cat "
on_space (){
    emoji="😸"
    LBUFFER="${LBUFFER/cat/$emoji} "
}
zle -N on_space
bindkey " " on_space
