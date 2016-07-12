# FASD stuff
alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection

# HACK
# The following two are OS X commands. Seeing as I'll be using Brew on OS X mainly, I'll put these here
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

# Aliases for brew-gist. Lets me make quick gists
alias gist='gist -c'
alias gistp='gist -c -p'

