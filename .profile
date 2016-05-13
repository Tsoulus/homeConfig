alias rscp='rsync -a'
alias rsmv='rsync -aP --remove-source-files'
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
# Unmounting in os x
alias unmount='diskutil unmountDisk force'
alias la='ls -lah'
alias wordSearch='function ws(){ find . -name "$1" -print0 | xargs -0 grep "$2"; };ws'

# Adds alias for git to create a github repo.
git config --global alias.create '!sh -c "curl -u \"Tsoulus\" https://api.github.com/user/repos -d \"{\\\"name\\\":\\\"$1\\\"}\"" -'

# Command to fix space in text sed 's/ /\\ /g' 

# Start TMUX when shell opens.
if which tmux >/dev/null 2>&1; then
    # if no session is started, start a new session
    test -z ${TMUX} && tmux

    # when quitting tmux, try to attach
    while test -z ${TMUX}; do
        tmux attach || break
    done
fi

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

export PATH="/usr/local/sbin:/opt/bin:$PATH"
export PS1="\u@\h:\[$(tput sgr0)\]\[\033[38;5;12m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;3m\]\\$\[$(tput sgr0)\] "

# Install custom prompt for git: https://github.com/magicmonty/bash-git-prompt
source ~/.bash-git-prompt/gitprompt.sh
GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_THEME=Solarized # use theme optimized for solarized color scheme
