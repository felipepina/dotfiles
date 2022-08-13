# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.bash/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null;
done;

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null; then
	complete -o default -o nospace -F _git g;
fi;

## Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
#[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Load Nix profile
if [ -e "${HOME}/.nix-profile/etc/profile.d/nix.sh" ]; then
    source "${HOME}/.nix-profile/etc/profile.d/nix.sh";
fi;

# Load Bash It (https://github.com/Bash-it/bash-it)
source "$BASH_IT"/bash_it.sh

# Tracks most-used directories to make cd smarter
# z (https://github.com/rupa/z)
# fz (https://github.com/changyuheng/fz)
test -r "${HOME}/dotfiles/bin/z.sh" && source "${HOME}/dotfiles/bin/z.sh"
test -r "${HOME}/dotfiles/bin/zfz.sh" && source "${HOME}/dotfiles/bin/zfz.sh"

# A leak-proof tee to the clipboard (https://gist.github.com/RichardBronosky/56d8f614fab2bacdd8b048fb58d0c0c7)
# test -r "${HOME}/dotfiles/bin/cb.sh" && source "${HOME}/dotfiles/bin/cb.sh"

# Setup fzf (https://github.com/junegunn/fzf)
if which fzf > /dev/null; then
	# Key bindings
	source "${HOME}/.nix-profile/share/fzf/key-bindings.bash"

	# Bash fuzzy completion
	#[[ $- == *i* ]] && source /usr/share/bash-completion/completions/fzf 2> /dev/null
	[[ $- == *i* ]] && source ${HOME}/.nix-profile/share/fzf/completion.bash 2> /dev/null

	# Setup fuzzy completion for more commands
	complete -F _fzf_path_completion -o default -o bashdefault ag
	complete -F _fzf_path_completion -o default -o bashdefault fd
	complete -F _fzf_path_completion -o default -o bashdefault rg
	complete -F _fzf_path_completion -o default -o bashdefault ccat
	complete -F _fzf_path_completion -o default -o bashdefault cless
	complete -F _fzf_path_completion -o default -o bashdefault bat
	complete -F _fzf_dir_completion -o default -o bashdefault tree

	# Change default command to ripgrep
	# export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'
	# export FZF_CTRL_T_COMMAND='rg --files --no-ignore-vcs --hidden'

	# Change default command to fd (fdfind in Debian)
	export FZF_DEFAULT_COMMAND='fd --type f -H -I'
	export FZF_CTRL_T_COMMAND='fd --type f -H -I'
	export FZF_ALT_C_COMMAND='fd --type d -H -I'

	# Enable preview for the CTRL-T using pygments as syntax highlighter
	export FZF_CTRL_T_OPTS="--preview '(pygmentize -f 256 -O style="$BASH_IT_CCAT_STYLE" -g {} || tree -C {}) 2> /dev/null | head -200'"

	# Add fzf-obc bash completion (https://github.com/rockandska/fzf-obc)
	#source ${HOME}/.config/fzf-obc/bin/fzf-obc.bash

	# Configure Bash tab completion to use fzf (https://github.com/lincheney/fzf-tab-completion)
	#source ${HOME}/.config/fzf-tab-completion/bash/fzf-bash-completion.sh
	#bind -x '"\t": fzf_bash_completion'
fi;

# Nord dircolors (https://github.com/arcticicestudio/nord-dircolors)
test -r "${HOME}/.dir_colors" && eval $(dircolors "${HOME}/.dir_colors")

# luaver (https://github.com/DhavalKapil/luaver)
[ -s "${HOME}/.luaver/luaver" ] && . "${HOME}/.luaver/luaver"

# # Node Version Manager - nvm (https://github.com/nvm-sh/nvm)
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

if which starship > /dev/null; then
	eval "$(starship init bash)"
fi;

# #THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
# export SDKMAN_DIR="$HOME/.sdkman"
# [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
