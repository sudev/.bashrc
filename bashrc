#Author Sudev A C 
#inspired from many to use terminal to maximum 
#
# ~/.bashrc
#getting a welcome message using fortune-mod and cowsay 
#install fortune-mod and cowsay for this 
command cowsay $(fortune)
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Linking other files
source $HOME/.bashrcfiles/inputrc
source $HOME/.bashrcfiles/alias
source $HOME/.bashrcfiles/history
source $HOME/.bashrcfiles/functions

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
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND ; }"'echo `dt` `pwd` $$ $USER \
               "$(history 1)" >> ~/.bash_eternal_history'