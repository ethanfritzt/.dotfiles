# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on (%F{197}%b%f) '

# Aliases
# php
alias php-start="brew services start php@7.4 && caddy start"
alias php-stop="brew services stop php@7.4 && caddy stop"
alias php-restart="brew services restart php@7.4 && caddy stop && caddy start"
# mysql
alias mysql-start="sudo /usr/local/mysql/support-files/mysql.server start"
alias mysql-stop="sudo /usr/local/mysql/support-files/mysql.server stop"
# terminal commands
alias cls="clear"

# Sets the default editor
export EDITOR="vim"
export VISUAL="vim"

export TERM=xterm-256color

# Determines prompt modifier if and when a conda environment is active
precmd_conda_info() {
  if [[ -n $CONDA_PREFIX ]]; then
      if [[ $(basename $CONDA_PREFIX) == "anaconda3" ]]; then
        # Without this, it would display conda version
        CONDA_ENV=""
      else
        # For all environments that aren't (base)
        CONDA_ENV="(%F{71}$(basename $CONDA_PREFIX)%f)"
      fi
  # When no conda environment is active, don't show anything
  else
    CONDA_ENV=""
  fi
}

# Run the previously defined function before each prompt
precmd_functions+=( precmd_conda_info )

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='${CONDA_ENV}[%n@mbp2021] in %F{68}${PWD##*/}%f ${vcs_info_msg_0_}%$(if [ "$(git stash list 2>/dev/null)" != "" ]; then echo "\*"$(git rev-list --walk-reflogs --count refs/stash)""; fi) λ '

export RPROMPT=''

# fnm
export PATH=/home/$USER/.fnm:$PATH
eval "$(fnm env --use-on-cd --version-file-strategy=recursive)"
