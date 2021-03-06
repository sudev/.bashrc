#Author Sudev A C 
#inspired from many to use terminal to maximum 
#
# ~/.bashrc
#getting a welcome message using fortune-mod and cowsay 
#install fortune-mod and cowsay for this 
command cowsay $(fortune)
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#added to avoid unessary fingerprint-gui messages 
xhost + >/dev/null

#Exports for wine 
export WINEPREFIX=.wine
export WINEARCH="win32"
#Linking other files
# if you use $HOME you wont be able to source these file when you are root 
PATH="${PATH}:/opt/android-sdk/tools/:/opt/android-sdk/platform-tools/:/home/sudev/.gem/ruby/2.1.0/bin"
export PATH=~/bin:$PATH
source ~/.bashrcfiles/inputrc
source ~/.bashrcfiles/alias
source ~/.bashrcfiles/history
source ~/.bashrcfiles/functions

#PS1='[\u@\h \W]\$ '

###Auto complete cd  into while entering the path 
shopt -s autocd

# Auto completetion for sudo and man 
complete -cf sudo
complete -cf man

#update .vimrc for changes to made for vim editor
#PS1='\[\033[0;32m\]\A \[\033[0;31m\]\u\[\033[0;34m\]@\[\033[0;35m\]\h\[\033[0;34m\]:\[\033[00;36m\]\W\[\033[0;33m\] $\[\033[0m\] '
#PS1='\u\$: \[\033[1;36m\]\w\[\033[0m\]\[\033[0m\]>'
PS1='\[\e[0;31m\]\u@\h \[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[0;31m\]\$ \[\e[m\]\[\e[0;32m\]\$ '
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND ; }"'echo `date` `pwd` $$ $USER "$(history 1)" >> ~/.bash_eternal_history'
