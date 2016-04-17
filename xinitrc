xbindkeys
[ -r ~/.Xmodmap ] && xmodmap ~/.Xmodmap
[ -r ~/.Xresources ] && xrdb -I$HOME -merge ~/.Xresources
conky &
exec gnome-session
