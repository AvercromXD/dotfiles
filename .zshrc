# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh
alias pbcopy='xsel --input --clipboard'
alias pbpaste='xsel --output --clipboard'

ROS_ID=20
if [ -f /opt/ros/humble/setup.zsh ]; then
    echo "Sourcing ROS2 with Domain ID $ROS_ID"
    source /opt/ros/humble/setup.zsh
    export ROS_DOMAIN_ID=$ID
fi

if [ -f /etc/os-release ]; then
    . /etc/os-release
    if [ "$ID" = "ubuntu" ] && [ "$VERSION_ID" = "22.04" ]; then
        export PATH="$PATH:/opt/nvim-linux64/bin"
    fi
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ian/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export HSA_OVERRIDE_GFX_VERSION=10.3.0

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH=$HOME/.local/bin:$PATH

eval "$(zoxide init zsh)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ian/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ian/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ian/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ian/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<



[ -f "/home/ian/.ghcup/env" ] && . "/home/ian/.ghcup/env" # ghcup-env
