if status is-interactive

    fastfetch

    #remove fish welcome message
    set -g fish_greeting ""

    set -gx EDITOR nvim

    #starship prompt
    starship init fish | source

    zoxide init fish | source

    #aliases
    alias ls='eza --icons'
    alias ll='eza -lhAo --no-permissions --group-directories-first --icons'
    alias vim='nvim'
    alias ..='cd ..'
    alias cat='bat'
    alias find='fd'
    alias grep='rg'
    alias cd='z'
    alias mv='mv -i'
    alias rm='rm -i'

end
