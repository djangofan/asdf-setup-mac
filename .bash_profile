# put in .bash_profile

export PATH=".:/usr/local/bin:/usr/local:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/sw/bin:$PATH"
export PATH="$PATH:/usr/local/git/bin"

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash

echo -e 'ASDF list:'
asdf list | tr '\n' ', '
echo -e '\n-------------'


