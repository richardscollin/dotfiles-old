
# I recomend using noto mono for glyph support
typeset -A emojis
emojis=(
cat 😸
cd 📂
date 🗓
firefox 🔥
kill 🗡
less 👓
ln 🔗
ls 🔍
man 👨
pacman ᗧ
rm 🗑
shit 💩
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
        if [[ "${LBUFFER}" =~ "\b${k}\b" ]];then
            # this if statement isn't needed but it
            # increases effiency by x10 because we can
            # avoid forking the process on most cases
            LBUFFER="$(echo "${LBUFFER}" | sed "s:\b${k}\b:${emojis[$k]}:")"
        fi
    done
    LBUFFER="${LBUFFER} "
}

zle -N on_space
bindkey " " on_space
