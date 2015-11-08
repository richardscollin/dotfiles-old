xbindkeys
[ -r ~/.Xmodmap ] && xmodmap ~/.Xmodmap
[ -r ~/.Xresources ] && xrdb -I$HOME -merge ~/.Xresources
exec awesome

