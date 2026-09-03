# Editor aliases
alias emacs="emacsclient -c"
alias vim='nvim'
alias tmacs='emacsclient -t'

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
