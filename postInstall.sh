#!/usr/bin/env bash

# shellcheck disable=SC3040

set -euo pipefail

printf "\e[0;34m==> Beginning post-install script...\e[0m\n"
printf "\n"

# Needless countdown to "enhance" the experience
for i in 3 2 1; do
	printf "\e[0;34m==> Starting in %d seconds... (^C to abort)\r\e[0m" "$i"
	sleep 1
done

printf "\n"
clear

printf "\e[0;34m==> Installing basic packages...\e[0m\n"

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
printf "\e[0;34m==> Installing symbola font via AUR...\e[0m\n"

paru -S --noconfirm --needed otf-symbola

# Chaotic AUR
printf "\e[0;34m==> Adding chaotic AUR repository...\e[0m\n"

sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB

sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

printf "\e[0;34m==> Appending chaotic AUR to pacman.conf...\e[0m\n"

printf "\n[chaotic-aur]\nInclude = /etc/pacman.d/chaotic-mirrorlist\n" | sudo tee -a /etc/pacman.conf

printf "\e[0;34m==> Updating system...\e[0m\n"

sudo pacman -Syu

printf "\e[0;32m==> Post-install complete.\e[0m\n"
