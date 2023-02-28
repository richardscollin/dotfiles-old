# --------------------------- smart prompt ---------------------------
#                 (keeping in bashrc for portability)
# source: https://github.com/rwxrob/dot/blob/main/.bashrc
# modified: Collin

__ps1() {
  local P='$' dir="${PWD##*/}" B countme short long double\
    r='\[\e[31m\]' g='\[\e[30m\]' h='\[\e[34m\]' \
    u='\[\e[33m\]' p='\[\e[34m\]' w='\[\e[35m\]' \
    b='\[\e[36m\]' reset='\[\e[0m\]'

  [[ $EUID == 0 ]] && P='#' && u=$r && p=$u # root
  [[ $PWD = / ]] && dir=/
  [[ $PWD = "$HOME" ]] && dir='~'

  B=$(git branch --show-current 2>/dev/null)
  [[ $dir = "$B" ]] && B=.
  countme="$USER@$(hostname):$dir($B)\$ "

  [[ $B == master || $B == main ]] && b="$r"
  [[ -n "$B" ]] && B="$g($b$B$g)"

  short="$u\u$g@$h\h$g:$w$dir$B$p$P$reset "
  long="$g╔ $u\u$g@$h\h$g:$w$dir$B\n$g╚ $p$P$reset "

  if (( ${#countme} > 20 )); then
    PS1="$long"
  else
    PS1="$short"
  fi
}

PROMPT_COMMAND="__ps1"

