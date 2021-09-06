# Color shortcuts
RED=$fg[red]
YELLOW=$fg[yellow]
GREEN=$fg[green]
WHITE=$fg[white]
BLUE=$fg[blue]
RED_BOLD=$fg_bold[red]
YELLOW_BOLD=$fg_bold[yellow]
GREEN_BOLD=$fg_bold[green]
WHITE_BOLD=$fg_bold[white]
BLUE_BOLD=$fg_bold[blue]
RESET_COLOR=$reset_color

# Format for git_prompt_status()
ZSH_THEME_GIT_PROMPT_UNMERGED=" %{$RED%}Um"
ZSH_THEME_GIT_PROMPT_DELETED=" %{$RED%}De"
ZSH_THEME_GIT_PROMPT_RENAMED=" %{$YELLOW%}Re"
ZSH_THEME_GIT_PROMPT_MODIFIED=" %{$YELLOW%}Mo"
ZSH_THEME_GIT_PROMPT_ADDED=" %{$GREEN%}Ad"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$WHITE%}Un"

#local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local user_host='$fg[green]%n@%m$reset_color'
local current_dir='%{$terminfo[bold]$fg[blue]%}%2~%{$reset_color%}'
# local rvm_ruby="$fg[white][$fg[yellow]\${\$(~/.rvm/bin/rvm-prompt i v g)#ruby-}$fg[white]]%{$reset_color%}"
local git_branch='$(git_prompt_info)%{$reset_color%}'
local current_time='$fg[white][$fg[red]%T$fg[white]] '

local ret_status="%(?:%{$fg_bold[green]%}▒ :%{$fg_bold[red]%}▒ )"

# PROMPT="${current_time} ${user_host}:${current_dir} ${rvm_ruby} ${git_branch}$WHITE [$RESET_COLOR$(git_prompt_status)$WHITE ]$RESET_COLOR
# PROMPT="${current_time} ${user_host}:${current_dir} ${git_branch}$WHITE [$RESET_COLOR$(git_prompt_status)$WHITE ]$RESET_COLOR
# $fg[green]$ $reset_color"
PROMPT="${ret_status}${current_time} ${user_host}:${current_dir} ${git_branch}$reset_color 👉 $reset_color"
# RPS1=" ${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="$fg[white]{$fg[yellow]"
ZSH_THEME_GIT_PROMPT_SUFFIX="$fg[white]}$reset_color"
ZSH_THEME_GIT_PROMPT_CLEAN=":$fg[green]✔$fg[yellow]"
ZSH_THEME_GIT_PROMPT_DIRTY=":$fg[red]✗$fg[yellow]"
