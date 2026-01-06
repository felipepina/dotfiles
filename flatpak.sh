#!/usr/bin/env bash

# Install Flatpak
sudo apt install flatpak

# Add Flathub repository
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Install apps
flatpak install flathub com.basemark.BasemarkGPU
flatpak install flathub com.calibre_ebook.calibre
flatpak install flathub com.github.alainm23.planner
flatpak install flathub com.github.bilelmoussaoui.Authenticator
flatpak install flathub com.github.johnfactotum.Foliate
flatpak install flathub com.github.mdh34.quickdocs
flatpak install flathub com.github.tchx84.Flatseal
flatpak install flathub com.leinardi.gst
flatpak install flathub com.leinardi.gwe
flatpak install flathub com.slack.Slack
flatpak install flathub com.spotify.Client
flatpak install flathub io.github.celluloid_player.Celluloid
flatpak install flathub org.darktable.Darktable
flatpak install flathub org.freedesktop.Piper
flatpak install flathub org.gimp.GIMP
flatpak install flathub org.gnome.Books
flatpak install flathub org.gnome.Lollypop
flatpak install flathub org.gnome.Rhythmbox3
flatpak install flathub org.gnome.Shotwell
flatpak install flathub org.gnucash.GnuCash
flatpak install flathub org.inkscape.Inkscape
flatpak install flathub org.kde.krita
flatpak install flathub org.mozilla.Thunderbird
flatpak install flathub org.remmina.Remmina
flatpak install flathub org.small_tech.Gnomi # A simple Git commit message editor for Gnome (https://github.com/small-tech/gnomit)
# git config --global core.editor "flatpak run org.small_tech.Gnomit"
flatpak install flathub org.telegram.desktop
