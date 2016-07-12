# enable color support of ls and also add handy aliases
alias ls='ls --color=always'
alias dir='dir --color=always'
alias vdir='vdir --color=always'

alias grep='grep --color=always'
alias fgrep='fgrep --color=always'
alias egrep='egrep --color'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Compiling Stuff
alias gcc='gcc-5'
alias cc='gcc-5'
alias g++='g++-5'
alias c++='c++-5'

# Always give colours for less
alias less='less --color=always'

# FASD stuff
alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection

# Git aliases
alias git-root='cd $(git rev-parse --show-toplevel)'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# cd to the path of the front Finder window
cdf() {
    target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
    if [ "$target" != "" ]; then
        cd "$target"; pwd
    else
        echo 'No Finder window found' >&2
    fi
}
# alias to open finder window at current PWD - synergies with above
alias fd='open -a Finder ./'

# ~pretty colours~ for Manual Pages
man() {
    env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
    man "$@"
}

# The Fuck (corrects console commands)
eval "$(thefuck --alias)"

# Go alias for update - forces an update
# Because I always default github to use ssh, go has trouble updating
alias gou='go get -u -f'

# Aliases for brew-gist. Lets me make quick gists
alias gist='gist -c'
alias gistp='gist -c -p'

# TMUX for OSX colour support
alias tmux="TERM=screen-256color-bce tmux"
