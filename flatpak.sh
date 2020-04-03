#!/usr/bin/env bash

# Install Snap Daemon
sudo apt install flatpak


# A simple Git commit message editor for Gnome (https://github.com/indie-mirror/gnomit)
flatpak install flathub ind.ie.Gnomit
# git config --global core.editor "flatpak run ind.ie.Gnomit"

flatpak install flathub com.calibre_ebook.calibre
flatpak install flathub com.github.johnfactotum.Foliate
flatpak install flathub com.github.mdh34.quickdocs
flatpak install flathub ind.ie.Gnomit
flatpak install flathub io.github.celluloid_player.Celluloid
flatpak install flathub org.darktable.Darktable
flatpak install flathub org.gimp.GIMP
flatpak install flathub org.gnome.Books
flatpak install flathub org.gnome.Shotwell
flatpak install flathub org.inkscape.Inkscape
flatpak install flathub org.kde.krita
flatpak install flathub org.remmina.Remmina

