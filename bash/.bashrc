#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias live='live-server'
alias pingme='ping yogeshwaran.xyz'
alias update='sudo pacman -Syu && yay -Syu'
#alias clean='sudo pacman -Rns $(pacman -Qdtq) && sudo paccache -r && yay -Ycns --ask'
alias clean='sudo pacman -Rns $(pacman -Qdtq) && sudo paccache -r && yay -Sc --noconfirm'
alias maria='sudo mariadb -u root -p'
alias postgres='sudo -iu postgres psql'
alias data="vnstat -i wlan0 -d"


#PS1='[\u@\h \W]\$ '
PS1='\[\e[1;38;5;44m\][\u@\h \W]\$\[\e[0m\] '


export TERMINAL=alacritty


export JAVA_HOME=/usr/lib/jvm/java-21-openjdk
export PATH="$HOME/bin:$JAVA_HOME/bin:$PATH"

