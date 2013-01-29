#Author Sudev Ambadi 
#inspired from many to use terminal to maximum 
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Linking other files
source $HOME/.bashrcfiles/inputrc

PS1='[\u@\h \W]\$ '

###Auto completion into while entering the path 
#this command will allow you to do the same
shopt -s autocd


#update .vimrc for changes to made for vim editor
##############################################################################################################
########		Alias Section to be made a separate file 					######
##############################################################################################################
# section alias to be exported as another file asap 

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
#alias search display 
alias showalias='cat ~/.bashrc'
alias searchalias='cat ~/.bashrc | grep'

#list ls
alias la='ls -a'
alias ll='ls -l'

#battery_BAT0
alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "state|time|per"'
alias batfull='upower -i /org/freedesktop/Upower/devices/battery_BAT0'

###package manager
#install form server 
alias install='sudo pacman -S'
#install from file 
alias installfile='sudo pacman -U'
#search for packages 
alias searchpac='sudo pacman -Ss'
