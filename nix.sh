#!/usr/bin/env bash

# Install Nix
sh <(curl -L https://nixos.org/nix/install) --no-daemon

# Update channel and packages
nix-channel --update nixpkgs

# Install packages

nix-env -iA nixpkgs.git
# ack (https://beyondgrep.com/) ack-grep in Debian/Ubuntu and ack in Pop!_OS
nix-env -iA nixpkgs.ack
## A cross-platform, GPU-accelerated terminal emulator (https://github.com/alacritty/alacritty)
#nix-env -iA nixpkgs.alacritty
# A lightweight multi-protocol & multi-source command-line download utility (https://aria2.github.io)
nix-env -iA nixpkgs.aria
# Terminal session recorder (https://asciinema.org)
nix-env -iA nixpkgs.asciinema
# GNU Aspell spell-checker with english, french and brazilian portuguese dictonaries (http://aspell.net)
nix-env -iA nixpkgs.aspell
nix-env -iA nixpkgs.aspellDicts.fr
nix-env -iA nixpkgs.aspellDicts.pt_BR
nix-env -iA nixpkgs.aspellDicts.en
# A cat(1) clone with wings (https://github.com/sharkdp/bat)
nix-env -iA nixpkgs.bat
## GNU Emacs editor (with GTK+ GUI support) (https://www.gnu.org/software/emacs)
#nix-env -iA nixpkgs.emacs
# A simple, fast and user-friendly alternative to 'find' (https://github.com/sharkdp/fd)
nix-env -iA nixpkgs.fd
# Tools for transcoding, streaming and playing of multimedia files (https://ffmpeg.org)
nix-env -iA nixpkgs.ffmpeg
# A command-line fuzzy finder (https://github.com/junegunn/fzf)
nix-env -iA nixpkgs.fzf
# An interactive process viewer for Unix (https://hisham.hm/htop)
nix-env -iA nixpkgs.htop
# Modern command line HTTP client (https://httpie.org)
nix-env -iA nixpkgs.httpie
# Frontend to curl that adds the ease of use of httpie, without compromising on features and performance (https://curlie.io/)
nix-env -iA nixpkgs.curlie
# Image manipulation programs (https://imagemagick.org)
nix-env -iA nixpkgs.imagemagick
# Command-line JSON processor (http://stedolan.github.io/jq)
nix-env -iA nixpkgs.jq
## luaver dependencies
#sudo apt install -y libreadline-dev
# A command-line system information tool written in bash 3.2+ (https://github.com/dylanarapseofetch)
nix-env -iA nixpkgs.neofetch
## Secure shell (SSH) client, for secure access to remote machines (http://www.openssh.com/)
#sudo apt install -y openssh-client
# A new p7zip fork with additional codecs and improvements (forked from https://sourceforge.net/projects/p7zip/) (https://github.com/jinfeihan57/p7zip)
nix-env -iA nixpkgs.p7zip
# A parallel implementation of gzip for modern multi-processor, multi-core machines (https://www.zlib.net/pigz)
nix-env -iA nixpkgs.pigz
# Pipe Viewer - is a terminal-based tool for monitoring the progress of data through a pipeline (https://www.ivarch.com/programs/pv.shtml)
nix-env -iA nixpkgs.pv
## Pygments dependencies
#sudo apt install -y python3-pip python3-venv
## A DBus daemon to configure input devices, mainly gaming mice
#sudo apt install -y ratbagd
## Rename multiple files (http://plasmasturm.org/code/rename)
#sudo apt install -y rename
# Recursively searches directories for a regex pattern (https://github.com/BurntSushi/ripgrep)
nix-env -iA nixpkgs.ripgrep
# A readline wrapper (https://github.com/hanslub42/rlwrap)
nix-env -iA nixpkgs.rlwrap
# A static analysis tool for shell scripts (https://www.shellcheck.net)
nix-env -iA nixpkgs.shellcheck
# A code-searching tool similar to ack, but faster (https://geoff.greer.fm/ag/)
nix-env -iA nixpkgs.silver-searcher
# A terminal multiplexer (https://github.com/tmux/tmux/wiki)
nix-env -iA nixpkgs.tmux
# Displays an indented directory tree, in color (http://mama.indstate.edu/users/ice/tree)
nix-env -iA nixpkgs.tree
## Ubuntu extra packages (codecs, MS fonts and Adobe flash)
#sudo apt install -y ubuntu-restricted-extras
## Visual Binary Diff (VBinDiff) displays files in hex & ASCII and can highlight the differences between 2 files (https://www.cjmweb.net/vbindiff)
#sudo apt install -y vbindiff
# Command line interface to the X11 clipboard (https://github.com/astrand/xclip)
nix-env -iA nixpkgs.xclip
# CLI program that accepts piped input and presents files for selection (https://github.com/facebook/pathpicker/)
nix-env -iA nixpkgs.fpp
# A command line tool for transferring files with URL syntax (https://curl.se/)
nix-env -iA nixpkgs.curl
# GNU Bourne-Again Shell, the de facto standard shell on Linux (https://www.gnu.org/software/bash/)
nix-env -iA nixpkgs.bash
## A modern, hackable, featureful, OpenGL based terminal emulator (https://sw.kovidgoyal.net/kitty/)
#nix-env -iA nixpkgs.kitty
# A tool for managing the installation of multiple software packages in the same run-time directory tree (https://www.gnu.org/software/stow/)
nix-env -iA nixpkgs.stow
# Library and tools for manipulating extended attributes (https://savannah.nongnu.org/projects/attr/)
nix-env -iA nixpkgs.attr
