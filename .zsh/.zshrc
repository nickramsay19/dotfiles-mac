## Custom aliases
# command aliases
alias la="ls -Al --color=auto"
alias mv="mv -i" # safe move to prevent overrides
alias g="git"
# location shortcuts
alias pro="cd ~/Documents/Projects"
alias doc="cd ~/Documents"
alias des="cd ~/Desktop"

# plugins
# auto suggestions
source ${HOME}/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '<tab>' autosuggest-accept
# syntax highlighting 
source ${HOME}/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# better vim mode
source ${HOME}/zsh/plugins/zsh-vi-mode/zsh-vi-mode.zsh

# change where the hisory file is located to the .zsh dir
HISTFILE=${HOME}/zsh/.zsh_history

# move without using cd
setopt AUTO_CD 

# vim mode
# disabled since I have the vi mode plugin
#bindkey -v

# ignore duplictes in history
# only ignore duplictes not both which includes commands starting with spaces
export HISTCONTROL=ignoredups # for bash
setopt HIST_IGNORE_DUPS # for zsh

# prompt colors
autoload -U colors && colors
colors

# git repo + branch info
# first we must load version control info
autoload -Uz vcs_info
precmd() { vcs_info }
# format git
zstyle ':vcs_info:git:*' formats '[%b]'
setopt PROMPT_SUBST

# custom prompt
PROMPT='${fg[white]}[${fg[yellow]}%T${fg[white]}] %~ > ${fg[bright_white]}'
RPROMPT='$vcs_info_msg_0_ [$ZVM_MODE]'

# NICK's LOCAL MAC SETTINGS
# custom golang settings
# set go packages dir to inside where I have go installed
export GOPATH=/usr/local/Cellar/go/1.8
# CUSTOM PATH VARIABLES
# Automatic wallpaper changer
path+=('/Users/nickramsay/Documents/Projects/go-auto-wallpaper/bin')
export PATH


