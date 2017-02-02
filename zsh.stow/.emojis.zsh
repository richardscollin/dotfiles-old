
# I recomend using noto mono for glyph support
typeset -A emojis
emojis=(
cat 😸
cd 📂
date 🗓
firefox 🦊
kill 🗡
less 👓
pacman ᗧ
rm 🗑
tee 🏌
top 🎩
touch 🖐
tree 🌲
vim 🖊
)

for k in "${(@k)emojis}";do
    alias ${emojis[$k]}="$k "
done

on_space (){
    for k in "${(@k)emojis}";do
        LBUFFER="${LBUFFER/$k/${emojis[$k]}}"
    done
    LBUFFER="${LBUFFER} "
}
zle -N on_space
bindkey " " on_space
