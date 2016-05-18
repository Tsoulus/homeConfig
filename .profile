## ALIAS ##
alias rscp='rsync -a'
alias rsmv='rsync -aP --remove-source-files'
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
# Unmounting in os x
alias eject='diskutil unmountDisk force'
alias la='ls -lah'
alias tsm='transmission-remote -l'
alias tsmt='transmission-remote -t"$1"'
alias transmission='transmission-remote'
alias tsmadd='transmission-remote --add "$1"'
alias whatismyip='ipconfig getifaddr en0'

# Adds alias for git to create a github repo.
git config --global alias.create '!sh -c "curl -u \"Tsoulus\" https://api.github.com/user/repos -d \"{\\\"name\\\":\\\"$1\\\"}\"" -'
## END ALIAS ##

## EXPORT ##
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

export PATH="/usr/local/sbin:/opt/bin:$PATH"
export PS1="\u@\h:\[$(tput sgr0)\]\[\033[38;5;12m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;3m\]\\$\[$(tput sgr0)\] "
## END EXPORT ##

## MISC ##
# Install custom prompt for git: https://github.com/magicmonty/bash-git-prompt
source ~/.bash-git-prompt/gitprompt.sh
GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_THEME=Solarized # use theme optimized for solarized color scheme
