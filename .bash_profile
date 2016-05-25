alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'

alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

source '/usr/local/share/chruby/chruby.sh'
chruby    ruby-2.0.0-p576

### Added by the Heroku Toolbelt
# export PATH="/usr/local/heroku/bin:$PATH"
# export HISTFILESIZE=2500000

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

function parse_git_branch () {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
 }

 RED="\[\033[0;31m\]"
 YELLOW="\[\033[0;33m\]"
 GREEN="\[\033[0;32m\]"
 PURPLE="\[\033[0;35m\]"
 BLUE="\[\033[0;34m\]"
 CYAN="\[\033[0;36m\]"
 NO_COLOR="\[\033[0m\]"

 PS1="$CYAN\u$NO_COLOR:\W$CYAN\$(parse_git_branch)$NO_COLOR\$ "

 #
 # Tab autocompletion for all the things
 #

 if [ ! -f ~/.git-completion.bash ]; then
   curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
 fi

 . ~/.git-completion.bash

source ~/.bashrc
export PGHOST=localhost

export IP=$(ipconfig getifaddr en4)
export IPwifi=$(ipconfig getifaddr en0)

alias nrb="npm run build"
alias nrd="npm run dev"
alias :q="exit"
