# change vim to nvim 
alias vim=nvim
alias today="date '+%Y%m%d'"

#terminal color
source /usr/share/git-core/contrib/completion/git-prompt.sh

export PS1=$'\[\033[01;32m\][ \w ]\[\033[00m\] $(__git_ps1 " on \[\e[01;32m\]%s\[\e[m\]") \n\xe2\x86\x92 '
# git fat verbose
export GIT_FAT_VERBOSE=1


# LinuxBrew
export PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"

# export PKG_CONFIG_PATH=/usr/lib/x86_64-linux-gnu/pkgconfig/:$PKG_CONFIG_PATH

# export PATH=/usr/local/bin:$PATH

# force color
# force_color_prompt=yes
DISABLE_AUTO_TITLE=true
