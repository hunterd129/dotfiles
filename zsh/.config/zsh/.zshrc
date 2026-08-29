# =========================================================
# History
# =========================================================

HISTFILE="$XDG_DATA_HOME/zsh/history"
HISTSIZE=100000
SAVEHIST=100000

FUNCNEST=100

setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS

# =========================================================
# Shell behaviour
# =========================================================

setopt AUTOCD
setopt NOBEEP
setopt NUMERIC_GLOB_SORT  

# =========================================================
# Smart directory navigation & lf
# =========================================================

if [[ -f ~/.config/lf/icons ]]; then
  LF_ICONS=$(cat ~/.config/lf/icons | tr '\n' ':')
  export LF_ICONS
fi

# Enable zoxide
eval "$(zoxide init zsh)"

# =========================================================
# Completion
# =========================================================
autoload -Uz compinit

compinit -d "$XDG_CACHE_HOME/zsh/zcompdump"

zstyle ':completion:*' menu select

# Make completion case-insensitive
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'  # lowercase input matches upper and lower

# =========================================================
# Fuzzy finder
# =========================================================

# Arch
if [[ -f /usr/share/fzf/key-bindings.zsh ]]; then
  source /usr/share/fzf/key-bindings.zsh
  source /usr/share/fzf/completion.zsh
fi

# Ubuntu
if [[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ]]; then
  source /usr/share/doc/fzf/examples/key-bindings.zsh
  source /usr/share/doc/fzf/examples/completion.zsh
fi

# =========================================================
# Modular Config Files
# =========================================================

# fzf configuration
source "$ZDOTDIR/fzf.zsh"

# Aliases
source "$ZDOTDIR/aliases.zsh"

# Custom keybindings
source "$ZDOTDIR/bindings.zsh"

# Plugins and plugin manager
source "$ZDOTDIR/plugins.zsh"

# Emacs
export PATH="$HOME/.config/emacs/bin:$PATH"

# Obligatory fastfetch
fastfetch

# Starship prompt
if [[ "$(tty)" == /dev/tty[0-9]* ]]; then
  PROMPT=$'%K{black}%F{cyan}%~%k%f\n%F{white}>%f '
else
  eval "$(starship init zsh)"
fi
