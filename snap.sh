#!/usr/bin/env bash

# Install Snap Daemon
sudo apt install snapd

# Install snaps
sudo snap install chromium
sudo snap install code --classic
# sudo snap install intellij-idea-community --classic
sudo snap install intellij-idea-ultimate --classic
sudo snap install kubectl --classic
sudo snap install ncspot           # Cross-platform ncurses Spotify client written in Rust (https://github.com/hrkfdn/ncspot)
sudo snap install plexmediaserver  # Plex magically organizes your media libraries and streams them to any device (https://www.plex.tv)
sudo snap install shfmt            # A shell parser, formatter and interpreter (POSIX/Bash/mksh) (https://github.com/mvdan/sh)
sudo snap install simplenote       # The simplest way to keep notes (https://github.com/snapcrafters/simplenote)(https://simplenote.com/)
