# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

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

# # Add tab completion for many Bash commands
# if which brew &> /dev/null && [ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]; then
# 	# Ensure existing Homebrew v1 completions continue to work
# 	export BASH_COMPLETION_COMPAT_DIR="$(brew --prefix)/etc/bash_completion.d";
# 	source "$(brew --prefix)/etc/profile.d/bash_completion.sh";
# elif [ -f /etc/bash_completion ]; then
# 	source /etc/bash_completion;
# fi;

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null; then
	complete -o default -o nospace -F _git g;
fi;

## Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
#[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults;

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall;

# Tracks most-used directories to make cd smarter (https://github.com/rupa/z)
if [ -f "$(brew --prefix)/etc/profile.d/z.sh" ]; then
	source "$(brew --prefix)/etc/profile.d/z.sh"
fi;

# Setup fzf (https://github.com/junegunn/fzf)
if [ -f "$(brew --prefix)/opt/fzf/bin/fzf" ]; then
	# Path
	if [[ ! "$PATH" == *$(brew --prefix)/opt/fzf/bin* ]]; then
	export PATH="${PATH:+${PATH}:}$(brew --prefix)/opt/fzf/bin"
	fi

	# Auto-completion
	[[ $- == *i* ]] && source "$(brew --prefix)/opt/fzf/shell/completion.bash" 2> /dev/null

	# Key bindings
	source "$(brew --prefix)/opt/fzf/shell/key-bindings.bash"

	# Change default command to ripgrep
	# export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'
	# export FZF_CTRL_T_COMMAND='rg --files --no-ignore-vcs --hidden'

	# Change default command to fd
	export FZF_DEFAULT_COMMAND='fd --type f -H -I'
	export FZF_CTRL_T_COMMAND='fd --type f -H -I'
	export FZF_ALT_C_COMMAND='fd --type d -H -I'
	
	# Enable preview for the CTRL-C using pygments as syntax highlighter
	export FZF_CTRL_T_OPTS="--preview '(pygmentize -f 256 -O style="$BASH_IT_CCAT_STYLE" -g {} || tree -C {}) 2> /dev/null | head -200'"
fi;

# Nord dircolors (https://github.com/arcticicestudio/nord-dircolors)
test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

# luaver (https://github.com/DhavalKapil/luaver)
if which luaver > /dev/null; then . `which luaver`; fi


# Load Bash It (https://github.com/Bash-it/bash-it)
source "$BASH_IT"/bash_it.sh

# #THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
# export SDKMAN_DIR="$HOME/.sdkman"
# [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
