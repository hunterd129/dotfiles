#!/usr/bin/env bash

# shellcheck disable=SC3040

set -euo pipefail
printf "\033[0;34m==> Beginning post-install script...\033[0m\n"
printf "\n"

# Needless countdown to "enhance" the experience
for i in 3 2 1; do
    printf "\033[0;34m==> Starting in %d seconds... (press ^C to abort)\r\033[0m" "$i"
    sleep 1
done

printf "\n"
clear

printf "\033[0;34m==> Installing basic packages...\033[0m\n"

# Emacs, langs, LSPs, Fonts, Shell, and Dotfile management
sudo pacman -S --noconfirm --needed \
    emacs-wayland \
    shellcheck \
    gopls \
    go \
    rust \
    rust-analyzer \
    markdownlint \
    discount \
    shfmt \
    cmake \
    ttc-iosevka-aile \
    ttc-iosevka-etoile \
    ttf-iosevka-nerd \
    ttc-iosevka-ss08 \
    zsh \
    ghostty \
    eza \
    ripgrep \
    fd \
    bat \
    zoxide \
    fzf \
    starship \
    fastfetch \
    neovim \
    git \
    stow
printf "\033[0;34m==> Installing symbola font via AUR...\033[0m\n"

paru -S --noconfirm --needed otf-symbola

printf "\033[0;32m==> Post-install complete.\033[0m\n"
