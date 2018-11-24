#!/bin/bash

DIRECTORY=$HOME/.asdf
JAVA_VERSION=oracle-8.191

if [[ ! -d "$DIRECTORY" ]]; then
  brew install openssl
  brew install gpg
  brew install gnupg
  brew install coreutils
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.6.1
  echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bash_profile
  echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bash_profile
fi

# java
asdf plugin-add java
#asdf list-all java
asdf install java $JAVA_VERSION
asdf global java $JAVA_VERSION
echo -e "\nJAVA_HOME=$DIRECTORY/installs/java/$JAVA_VERSION" >> ~/.bash_profile
java -version

# nodejs https://github.com/asdf-vm/asdf-nodejs
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
#asdf list-all nodejs
bash "$DIRECTORY/plugins/nodejs/bin/import-release-team-keyring"
asdf install nodejs 11.2.0
asdf global nodejs 11.2.0
npm -v

# maven
asdf plugin-add maven
#asdf list-all maven
asdf install maven 3.6.0
asdf global maven 3.6.0
mvn -v

# gradle 
asdf plugin-add gradle
#asdf list-all gradle
asdf install gradle 4.9
asdf global gradle 4.9
gradle -v

# ruby
asdf plugin-add ruby
#asdf list-all ruby
asdf install ruby 2.5.3
asdf global ruby 2.5.3
ruby -v

# python
asdf plugin-add python https://github.com/tuvistavie/asdf-python.git
#asdf list-all python
asdf install python 3.7.1
asdf global python 3.7.1
python --version
