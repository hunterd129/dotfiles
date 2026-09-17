#!/usr/bin/env bash

# shellcheck disable=SC3040
set -euo pipefail

EMACS_DIR="${HOME}/.config/emacs"
DOOM_DIR="${HOME}/.config/doom"

printf "\033[0;34m==> Setting up Doom Emacs...\033[0m\n"

if [ ! -d "$EMACS_DIR" ]; then
    printf "\033[0;34m==> Cloning Doom Emacs core...\033[0m\n"
    git clone --depth 1 https://github.com/doomemacs/doomemacs "$EMACS_DIR"
else
    printf "\033[0;34m==> Doom Emacs core already exists at %s, skipping clone.\033[0m\n" "$EMACS_DIR"
fi

export PATH="${EMACS_DIR}/bin:${PATH}"

if [ ! -f "${EMACS_DIR}/bin/doom" ]; then
    printf "\033[0;31mError: Doom CLI not found in %s/bin!\033[0m\n" "$EMACS_DIR" >&2
    exit 1
fi

printf "\033[0;34m==> Installing Doom Emacs (using stowed configs in %s)...\033[0m\n" "$DOOM_DIR"
doom install --no-env --no-fonts --config

printf "\033[0;32m==> Doom Emacs setup complete!\033[0m\n"
