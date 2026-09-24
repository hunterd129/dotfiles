#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Obligatory Fastfetch
fastfetch

# Aliases
alias vim='nvim'
alias ll='eza -lhAob --no-permissions --group-directories-first --icons always'
alias ls='eza --icons'
alias cat='bat'
alias find='fd'
alias rm='rm -i'
alias cd='z'
alias emacs="emacsclient -ta 'nvim'"

# Zoxide
eval "$(zoxide init bash)"

# Starship prompt
if [[ "$(tty)" == /dev/tty[0-9]* ]]; then
    PS1='\[\e[38;5;39m\]\w\n\[\e[38;5;189m\]>\[\e[0m\] '
else
    eval "$(starship init bash)"
fi
