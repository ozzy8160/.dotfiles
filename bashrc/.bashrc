if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  dbus-run-session Hyprland
fi

if [ -f /share/bash-completion/bash_completion ]; then
  . /share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

#check if shell is interactive
if [[ $- == *i* ]]; then
  #bind CTRL+f to insert 'zi' followed by a newline
  bind '"\C-f":"zi\n"'
fi
#increase history size
export HISTFILESIZE=1000000
export HISTSIZE=5000
export HISTTIMEFORMAT="%F %T"
#personal ALIAS
alias ebrc='v ~/.bashrc'
alias cp='cp -i'
alias mv='mv -i'
alias h='history | grep'
alias rebootsafe='sudo shutdown -r now'
alias rebootforce='sudo shutdown -r -n now'
alias	sj="ssh ryan@192.168.1.58"
alias	sn="ssh ryan@192.168.1.114"

cd() {
  if [ -n "1" ]; then
    builtin cd "$@" && lsd -alh
  else
   builtin cd ~ && lsd -alh
  fi
}

zz() {
  if [ -n "1" ]; then
    z "$@" && lsd -alh
  else
    z ~ && lsd -alh
  fi
}

eval "$(zoxide init bash)"
eval "$(fzf --bash)"

