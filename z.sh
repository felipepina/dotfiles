#!/usr/bin/env bash

# z - jump around (https://github.com/rupa/z)
curl "https://raw.githubusercontent.com/rupa/z/master/{z.sh}" \
	-o "${HOME}/dotfiles/bin/""#1"
# The missing fuzzy tab completion feature of z jump around command (https://github.com/changyuheng/fz)
curl "https://raw.githubusercontent.com/changyuheng/fz/master/{fz.sh}" \
	-o "${HOME}/dotfiles/bin/z""#1"
