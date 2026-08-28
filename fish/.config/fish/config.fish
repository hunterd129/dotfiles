if status is-interactive

    fastfetch

    set -g fish_greeting ""
    set -gx XDG_CONFIG_HOME $HOME/.config
    set -gx XDG_DATA_HOME $HOME/.local/share
    set -gx XDG_CACHE_HOME $HOME/.cache
    set -gx XDG_STATE_HOME $HOME/.local/state
    set -gx EDITOR "emacsclient -ta 'nvim'"
    set -gx VISUAL "emacsclient -ta 'nvim'"

    #starship prompt
    starship init fish | source

    zoxide init fish | source

    #aliases
    alias emacs='emacsclient -ca 'nvim''
    alias ls='eza --icons always'
    alias ll='eza -lhAobn --no-permissions --group-directories-first --icons always'
    alias vim='nvim'
    alias cat='bat'
    alias find='fd'
    alias cd='z'
    alias rm='rm -i'

    #custom variables
    set -gx walls /home/hunter/Pictures/Wallpapers

    #syntax hightlighting
    source ~/.config/fish/theme.fish

end
