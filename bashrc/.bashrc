cd() {
    builtin cd "$@" && lsd -lAh
}


eval "$(zoxide init bash)"
eval "$(fzf --bash)"
eval "$(thefuck --alias)"
