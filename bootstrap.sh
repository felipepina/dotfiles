#!/usr/bin/env bash

if [ "$(uname)" = Darwin ]; then
	./brew.sh
	# ./macos.sh
fi
if [ "$(uname)" = Linux ]; then
	./debian.sh
	# ./snap.sh
fi

# Install Nix
./nix.sh

# Install/update the dotfiles
./install.sh

# Install Tmux Plugin Manager (https://github.com/tmux-plugins/tpm)
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install SDKMAN!
./sdkman.sh

# Install z
./z.sh

# Add bash-it completions
bash-it enable completion bash-it docker-compose gradle helm kubectl maven npm nvm sdkman ssh system tmux

# Add bash-it plugins
bash-it enable plugin alias-completion base docker docker-compose edit-mode-emacs extract fzf git gradle history java less-pretty-cat man node nvm sdkman ssh

# Add bash-it aliases
bash-it enable alias ag apt curl docker-compose docker emacs general git kubectl maven npm systemd tmux

