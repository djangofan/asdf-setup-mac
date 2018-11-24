# put in .bash_profile

export PATH=".:/usr/local/bin:/usr/local:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/sw/bin:$PATH"
export PATH="$PATH:/usr/local/git/bin"


# export PATH="$PATH:$HOME/.pyenv/shims" # add Python version manager 'brew install pyenv'
# eval "$(pyenv init -)"
# echo "Python shimmed: " + $(pyenv which python)
# export PATH="$PATH:$HOME/.rbenv/bin" # add Ruby version manager 'brew install rbenv'
# eval "$(rbenv init -)"
# echo "Ruby shimmed: " + $(rbenv which ruby)
# # install SDKMAN 'curl -s "https://get.sdkman.io" | bash'
# [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
# echo "Available SDKMAN libs: " + $(ls ~/.sdkman/candidates)
# echo "Available BREW libs: " + $(brew list && brew cask list)
# echo "------------------"
# echo ""
# 
# export JAVA_HOME=/Users/jausten/.sdkman/candidates/java/current


. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash

echo -e 'ASDF list:'
asdf list | tr '\n' ', '
echo -e '\n-------------'


