#source pywal colors 
(cat ~/.cache/wal/sequences &)

#auto launch hyprland from tty
if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  dbus-run-session Hyprland
fi

#run fastfetch @ terminal launch
if [ -f /run/current-system/sw/bin/fastfetch ]; then
  fastfetch
fi

if [ -f /share/bash-completion/bash_completion ]; then
  . /share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

#create and go to dir
mkdirg() {
  mkdir -p "$1"
  cd "$1"
}

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
if command -v rg &> /dev/null; then
  alias grep='rg'
fi
alias ebrc='v ~/.bashrc'
alias cp='cp -i'
alias mv='mv -i'
alias h='history | grep'
alias rebootsafe='sudo shutdown -r now'
alias rebootforce='sudo shutdown -r -n now'
alias	sj="ssh ryan@192.168.1.58"
alias	sn="ssh ryan@192.168.1.114"
alias revault='sshfs -o allow_other,default_permissions ryan@192.168.1.114:/mnt/vault3 /mnt/vault3'

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

