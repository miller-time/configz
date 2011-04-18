# needed to have git branch in prompt
function parse_git_branch {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo "("${ref#refs/heads/}")"
}

# color prompt that displays username, cwd, git branch
PS1="[\u \[$(tput bold)\]\[$(tput setaf 3)\]\W\[$(tput setaf 2)\] \$(parse_git_branch)\[$(tput sgr0)\]]\$ "

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

