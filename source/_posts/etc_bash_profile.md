
---
title: bashProfile
date: 2019-05-27 12:00:00
tags: config
category: etc
---

```
##########################################################
#               tools
##########################################################
alias wkjj="wakeonlan xx:xx:xx:xx:xx:xx"

alias alrand="date "+%a%b%c%d%sasdfasfdsdf"|md5|tr 'a-z' 'A-Z';date|md5|tr 'a-z' 'A-Z'|pbcopy"

##########################################################
#               script
##########################################################
alias gs="gitSS"
alias ggs="cdg;gitSS"

##########################################################
#				replace
##########################################################
#	-i
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"
#	ls
alias ls="ls -G"
alias la="ls -aF"
alias ll="ls -lF"
alias lm="ls -alF"
#	grep
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
#	vim
alias vi="vim"
#	.bash_profile
alias vipro="vim ~/.bash_profile"
alias soupro="source ~/.bash_profile"

##########################################################
#				workspace
##########################################################
#	cd
alias cdc="cd ~/Documents/Coding"
alias cdd="cd ~/Documents"
alias cdo="cd ~/Downloads"
alias cdg="cdc;cd guo"

##########################################################
#               path
##########################################################
#	home
export PATH=${PATH}:${HOME}/bin
#	adb
export PATH=${PATH}:/Users/john/android/sdk/platform-tools
export PATH=${PATH}:/Users/john/android/sdk/tools

#export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_191.jdk/Contents/Home"
#export CLASS_PATH="$JAVA_HOME/lib"
#export ANDROID_NDK_ROOT="/Users/john/android/android-ndk-r18b"
#export PATH="${PATH}:$JAVA_HOME/bin"
#	mysql
export PATH=${PATH}:/usr/local/mysql/bin
#	nasm
export PATH=/Users/john/bin/nasm:${PATH}

##########################################################
#				others
##########################################################
#	LANG
export LANG=en_US.UTF-8
```


