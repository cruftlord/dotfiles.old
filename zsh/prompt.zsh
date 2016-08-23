# Theme goes here
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}- %{$FG[116]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[160]%}*%{$FG[116]%}"

ZSH_THEME_VI_MODE_COMMAND="%{$fg_bold[magenta]%}<#%{$reset_color%}"
ZSH_THEME_VI_MODE_INSERT="%{$FG_BOLD[188]%}$>%{$reset_color%}"

vi_mode_prompt_info () {
  if [[ ${KEYMAP} = 'vicmd' ]]
  then
    echo $ZSH_THEME_VI_MODE_COMMAND
  else
    echo $ZSH_THEME_VI_MODE_INSERT
  fi
}

PROMPT='%{$FG[108]%}%c $(git_prompt_info)$(vi_mode_prompt_info) '
PROMPT2='%{$FG[116]%}\ %{$reset_color%}'
RPS1='%{$FG[187]%}%~%{$reset_color%} ${return_code} '
