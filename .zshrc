ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

plugins=(osx brew git sbt bower)

source $ZSH/oh-my-zsh.sh


PROMPT='%{$fg[yellow]%}➤%{$fg_bold[green]%}%p %{$fg[cyan]%}%c $ % %{$reset_color%}'

export EDITOR="vim"

export PATH=$HOME/.dotfiles/.bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:/usr/local/Cellar/ruby/2.1.0/bin/:$PATH
export SCALA_HOME=/usr/local/Cellar/scala/2.10.3/libexec
export JAVA_HOME=$(/usr/libexec/java_home)
export JAVA_OPTS="$JAVA_OPTS -Dfile.encoding=utf-8"
export PRISMATIC_UPLOAD_PATH="root@kulikovd.ru:/var/www/prismatic-feed/"
export ANDROID_HOME="/tmp" # for sbt assembly

source ~/.dotfiles/.aliases
source ~/.dotfiles/.functions

if [ -f /usr/local/bin/aws_zsh_completer.sh ]; then
  source /usr/local/bin/aws_zsh_completer.sh
fi

if `tty -s`; then
   mesg n
fi
