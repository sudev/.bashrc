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

PS1='[\u@\h \W]\$ '

###Auto complete cd  into while entering the path 
shopt -s autocd

#update .vimrc for changes to made for vim editor
PS1='[\u@\h \W]\$ '
