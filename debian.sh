#!/usr/bin/env bash

# Configure Debian like system (Debian/Ubuntu/Pop!_OS)

sudo apt update
# ack (https://beyondgrep.com/) ack-grep in Debian/Ubuntu and ack in Pop!_OS
# sudo apt install -y ack ack-grep
# A cross-platform, GPU-accelerated terminal emulator (https://github.com/alacritty/alacritty)
sudo apt install -y alacritty
# A lightweight multi-protocol & multi-source command-line download utility (https://aria2.github.io)
sudo apt install -y aria2
# Terminal session recorder (https://asciinema.org)
sudo apt install -y asciinema
# GNU Aspell spell-checker with english, french and brazilian portuguese dictonaries (http://aspell.net)
sudo apt install -y aspell aspell-en aspell-fr aspell-pt-br
# A cat(1) clone with wings (https://github.com/sharkdp/bat)
sudo apt install -y bat
# GNU Emacs editor (with GTK+ GUI support) (https://www.gnu.org/software/emacs)
sudo apt install -y emacs-gtk
# A simple, fast and user-friendly alternative to 'find' (https://github.com/sharkdp/fd)
sudo apt install -y fd-find
# Tools for transcoding, streaming and playing of multimedia files (https://ffmpeg.org)
sudo apt install -y ffmpeg
# A command-line fuzzy finder (https://github.com/junegunn/fzf)
sudo apt install -y fzf
# The GNOME GUI client to view git repositories (https://wiki.gnome.org/Apps/Gitg)
sudo apt install -y gitg
# A time management utility for GNOME based on the pomodoro technique (http://gnomepomodoro.org)
sudo apt install -y gnome-shell-pomodoro
# Customize advanced GNOME 3 options (https://wiki.gnome.org/Apps/Tweaks)
sudo apt install -y gnome-tweaks
# GNU privacy guard - a free PGP replacement (https://gnupg.org)
sudo apt install -y gnupg
# An interactive process viewer for Unix (https://hisham.hm/htop)
sudo apt install -y htop
# Modern command line HTTP client (https://httpie.org)
sudo apt install -y httpie
# Image manipulation programs (https://imagemagick.org)
sudo apt install -y imagemagick
# Command-line JSON processor (http://stedolan.github.io/jq)
sudo apt install -y jq
# luaver dependencies
sudo apt install -y libreadline-dev
# A command-line system information tool written in bash 3.2+ (https://github.com/dylanarapseofetch)
sudo apt install -y neofetch
# Secure shell (SSH) client, for secure access to remote machines (http://www.openssh.com/)
sudo apt install -y openssh-client
# 7zr file archiver with high compression ratio (http://p7zip.sourceforge.net)
sudo apt install -y p7zip
# A parallel implementation of gzip for modern multi-processor, multi-core machines (https://www.zlib.net/pigz)
sudo apt install -y pigz
# Pipe Viewer - is a terminal-based tool for monitoring the progress of data through a pipeline (https://www.ivarch.com/programs/pv.shtml)
sudo apt install -y pv
# Pygments dependencies
sudo apt install -y python3-pip python3-venv
# A DBus daemon to configure input devices, mainly gaming mice
sudo apt install -y ratbagd
# Rename multiple files (http://plasmasturm.org/code/rename)
sudo apt install -y rename
# Recursively searches directories for a regex pattern (https://github.com/BurntSushi/ripgrep)
sudo apt install -y ripgrep
# A readline wrapper (https://github.com/hanslub42/rlwrap)
sudo apt install -y rlwrap
# A static analysis tool for shell scripts (https://www.shellcheck.net)
sudo apt install -y shellcheck
# A code-searching tool similar to ack, but faster (https://geoff.greer.fm/ag/)
sudo apt install -y silversearcher-ag
# A terminal multiplexer (https://github.com/tmux/tmux/wiki)
sudo apt install -y tmux
# Displays an indented directory tree, in color (http://mama.indstate.edu/users/ice/tree)
sudo apt install -y tree
# Ubuntu extra packages (codecs, MS fonts and Adobe flash)
sudo apt install -y ubuntu-restricted-extras
# Visual Binary Diff (VBinDiff) displays files in hex & ASCII and can highlight the differences between 2 files (https://www.cjmweb.net/vbindiff)
sudo apt install -y vbindiff
# Command line interface to the X11 clipboard (https://github.com/astrand/xclip)
sudo apt install -y xclip

#  Lua Version Manager (https://dhavalkapil.com/luaver)
curl https://raw.githubusercontent.com/dhavalkapil/luaver/v1.0.0/install.sh \
	-o "${HOME}/dotfiles/install_luaver.sh" &&
	source "${HOME}/dotfiles/install_luaver.sh" &&
	rm -fr "${HOME}/dotfiles/install_luaver.sh"

# # Install fpp (Facebook PathPicker)
# git clone https://github.com/facebook/PathPicker.git && \
# cd PathPicker/debian && \
# ./package.sh && \
# ls ../fpp_0.7.2_noarch.deb

# Install Pygments (https://pygments.org/)
pip3 install Pygments

