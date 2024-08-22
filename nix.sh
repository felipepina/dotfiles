#!/usr/bin/env bash

# Install Nix
sh <(curl -L https://nixos.org/nix/install) --no-daemon

# Update channel and packages
nix-channel --update nixpkgs

# Install Home Manager
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
. ${HOME}/.nix-profile/etc/profile.d/nix.sh
nix-shell '<home-manager>' -A install

