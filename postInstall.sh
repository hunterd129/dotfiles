#!/usr/bin/env bash

# shellcheck disable=SC3040

set -euo pipefail
printf "\033[0;34m==> Beginning post-install script...\e[0m\n"
printf "\n"

# Needless countdown to "enhance" the experience
for i in 3 2 1; do
	printf "\033[0;34m==> Starting in %d seconds... (press ^C to abort)\r\e[0m" "$i"
	sleep 1
done

printf "\n"
clear

printf "\033[0;34m==> Installing basic packages...\e[0m\n"

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
printf "\033[0;34m==> Installing symbola font via AUR...\e[0m\n"

paru -S --noconfirm --needed otf-symbola

# Chaotic AUR
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB

sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

# **Important!!**
# Add the following to /etc/pacman.conf for Chaotic AUR
#
#   [chaotic-aur]
#   Include = /etc/pacman.d/chaotic-mirrorlist

printf "\e[1;33mRemember to add chaotic AUR to /etc/pacman.conf and then run\n\e[1;31m\e[3m   'sudo pacman -Syu'\e[0m\e[1;33m to update system.\e[0m\n\n"

printf "\e[4;31mAppend:\n   '[chaotic-aur]\n   Include = /etc/pacman.d/chaotic-mirrorlist'\n to /etc/pacman.conf\e[0m\n\n"

sleep 2

printf "\033[0;32m==> Post-install complete.\e[0m\n"
