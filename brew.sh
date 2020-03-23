#!/usr/bin/env bash

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
# Don’t forget to add `$(brew --prefix gnu-sed)/libexec/gnubin` to `$PATH`.
brew install gnu-sed
# Install Bash 4.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install grep
brew install openssh

# Install other useful binaries.
brew install ack
brew install asciinema
brew install aspell
brew install bat
brew install docker-completion
brew install docker-compose-completion
brew install exa
brew install fd
brew install fpp
brew install fzf
brew install git
brew install git-lfs
brew install htop
brew install httpie
brew install imagemagick
brew install jq
brew install kakoune
brew install luaver
brew install node
brew install p7zip
brew install pigz
brew install pv
brew install pygments
brew install rename
brew install ripgrep
brew install rlwrap
brew install shfmt
brew install ssh-copy-id
brew install tmux
brew install tree
brew install vbindiff
brew install watch
brew install wget
brew install z

# Install Alacritty
brew cask install alacritty

# Install Emacs
brew tap d12frosted/emacs-plus
brew install emacs-plus
ln -sf /usr/local/opt/emacs-plus/Emacs.app /Applications

# Install Hack Nerd Font (https://github.com/ryanoasis/nerd-fonts)
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font-mono

# Install Platypus (https://github.com/sveinbjornt/Platypus)
brew cask install platypus

# Remove outdated versions from the cellar.
brew cleanup
