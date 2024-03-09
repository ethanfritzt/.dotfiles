# Aliases
# php
# MACBOOK 2021 WORK RELATED CONFIG
alias php-start="brew services start php@7.4 && caddy start"
alias php-stop="brew services stop php@7.4 && caddy stop"
alias php-restart="brew services restart php@7.4 && caddy stop && caddy start"
# mysql
alias mysql-start="sudo /usr/local/mysql/support-files/mysql.server start"
alias mysql-stop="sudo /usr/local/mysql/support-files/mysql.server stop"
# END MACBOOK 2021 WORK RELATED CONFIG
# terminal commands
alias cls="clear"

# Sets the default editor
export EDITOR="vim"
export VISUAL="vim"
export TERM=xterm-256color

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on (%F{197}%b%f) '

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='[%n@%m] in %F{68}${PWD##*/}%f ${vcs_info_msg_0_}%$(if [ "$(git stash list 2>/dev/null)" != "" ]; then echo "\*"$(git rev-list --walk-reflogs --count refs/stash)""; fi) λ '
export RPROMPT=''

# fnm
export PATH=/home/$USER/.fnm:$PATH
eval "$(fnm env --use-on-cd --version-file-strategy=recursive)"
