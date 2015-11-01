
xbindkeys
[ -r ~/.Xmodmap ] && xmodmap ~/.Xmodmap
[ -r ~/.Xresources ] && xrdb -I$HOME -merge ~/.Xresources
compton -b
exec awesome
#exec i3

