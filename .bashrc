export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export NVM_DIR="/Users/wing/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export ANDROID_HOME=/usr/local/opt/android-sdk

svagrants() { cd /Users/wing/VAGRANTS/ ; }

HISTSIZE=50000
HISTFILESIZE=50000
export SHELL_SESSION_HISTORY=0


# tabtab source for yo package
# uninstall by removing these lines or running `tabtab uninstall yo`
[ -f /Users/wing/.nvm/versions/node/v5.0.0/lib/node_modules/yo/node_modules/tabtab/.completions/yo.bash ] && . /Users/wing/.nvm/versions/node/v5.0.0/lib/node_modules/yo/node_modules/tabtab/.completions/yo.bash
