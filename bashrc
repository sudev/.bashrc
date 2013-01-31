#Author Sudev A C 
#inspired from many to use terminal to maximum 
#
# ~/.bashrc
#

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

#update .vimrc for changes to made for vim editor
PS1='\[\033[0;32m\]\A \[\033[0;31m\]\u\[\033[0;34m\]@\[\033[0;35m\]\h\[\033[0;34m\]:\[\033[00;36m\]\W\[\033[0;33m\] $\[\033[0m\] '
