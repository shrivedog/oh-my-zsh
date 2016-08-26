local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}↑ )"
function virtualenv_status {
    if [ ${VIRTUAL_ENV} ]; then
        echo "(`basename ${VIRTUAL_ENV}`)"
    fi
}
PROMPT='%{$fg_bold[white]%}%n@%m%{$fg_bold[green]%}[%T] %{$fg_bold[cyan]%}[${PWD/#$HOME/~}]%{$reset_color%} 
%{$fg_bold[yellow]%}$(virtualenv_status)$(git_prompt_info)${ret_status}%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
