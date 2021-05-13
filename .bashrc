#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
unset module
unset scl
alias ll="ls -la"
alias zoom="env /usr/bin/flatpak run --branch=stable --arch=x86_64
--command=zoom --file-forwarding us.zoom.Zoom %U"
