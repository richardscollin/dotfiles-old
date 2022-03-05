# If not running interactively, do not do anything
[[ $- != *i* ]] && return
if [[ -a "$HOME/.variables" ]];then
    source "$HOME/.variables"
fi

if [[ -a "$HOME/.aliases" ]];then
    source "$HOME/.aliases"
fi

DISABLE_AUTO_UPDATE=true
source "$HOME/.oh-my-zsh/oh-my-zsh.sh"

# Recommend packages on invalid command
if [[ -a /etc/profile.d/cnf.sh ]];then
    source /etc/profile.d/cnf.sh
fi

# ls after every cd
function chpwd() {
    emulate -L zsh
    ls
}

export ASAN_OPTIONS=detect_leaks=0:exitcode=0:log_to_syslog=true:log_exe_name=true
ls

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
