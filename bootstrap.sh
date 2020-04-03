#!/usr/bin/env bash

if [ "$(uname)" = Darwin ]; then
	./brew.sh
	# ./macos.sh
fi
if [ "$(uname)" = Linux ]; then
	./debian.sh
	#	./snap.sh
fi

# Install/update the dotfiles
./install.sh

# Install Tmux Plugin Manager (https://github.com/tmux-plugins/tpm)
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install SDKMAN!
./sdkman.sh

# Add bash-it completion
bash-it enable completion bash-it sdkman tmux ssh system

# Add bash-it plugins
bash-it enable plugin base docker-compose docker edit-mode-emacs extract gradle history less-pretty-cat man sdkman visual-studio-code fzf
