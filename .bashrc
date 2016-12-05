# vim as default text editor
export EDITOR='vim'

# add today var
alias today="date '+%Y%m%d'"

# git repo details on terminal
source /etc/bash_completion.d/git-prompt

# export ps1
export PS1='\[\e[1;31m\]\u\[\e[m\] at \[\e[1;31m\]\h\[\e[m\] in \[\e[1;31m\]\w\[\e[m\]$(declare -F __git_ps1 >&/dev/null && __git_ps1 " on \[\e[1;31m\]%s\[\e[m\]")\n\[\e[1;31m\]$\[\e[m\] '

# avoid renaming of tmux page
DISABLE_AUTO_TITLE=true
