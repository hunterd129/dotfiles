# Editor aliases
    alias emacs="emacsclient -c"
    alias vim='nvim'

# Eza aliases
    alias ls='eza --icons always'
    alias ll='eza -lhAobn --no-permissions --group-directories-first --icons always'
    alias tree='eza --tree --icons'

# Reuse ls completions for eza
    compdef eza=ls
# Other aliases
    alias grep='rg --color=auto'
    alias diff='diff --color-auto'
    alias cat='bat'
    alias find='fd'
    alias cd='z'
    alias rm='rm -i'

    lf() { # zsh follow lf navigation
    tmp=$(mktemp)
    command lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir=$(cat "$tmp")
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
