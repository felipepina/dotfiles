#!/usr/bin/env bash

if [ "$(uname)" = Darwin ]; then
	./brew.sh
	# ./macos.sh
fi
if [ "$(uname)" = Linux ]; then
	./debian.sh
	# ./snap.sh
fi

# Install/update the dotfiles
./install.sh

# Install Tmux Plugin Manager (https://github.com/tmux-plugins/tpm)
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install SDKMAN!
./sdkman.sh

# Add bash-it completion
bash-it enable completion bash-it docker-compose git gradle kubectl maven sdkman ssh system tmux

# Add bash-it plugins
bash-it enable plugin base docker docker-compose edit-mode-emacs extract fzf git gradle history java less-pretty-cat man sdkman ssh

# Add bash-it aliases
bash-it enable alias ag apt curl docker-compose docker emacs general git kubectl maven systemd tmux
