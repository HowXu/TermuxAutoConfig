PROMPT='
%{$fg[green]%}┌──%{$fg_bold[red]%}[%{$fg_bold[blue]%}Howxu%{$fg_bold[red]%}㉿%{$fg_bold[blue]%}Termux%{$fg_bold[red]%}]%{$fg_bold[blue]%}-%{$fg_bold[red]%}[%{$fg_bold[white]%}%(5~|%-1~/…/%2~|%4~)%{$fg_bold[red]%}]%{$reset_color%} $(git_prompt_info)
%{$fg[green]%}└─%{$fg_bold[blue]%}[%{$fg_bold[white]%}%*%{$fg_bold[blue]%}]%{$fg_bold[red]%}# '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=" "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"