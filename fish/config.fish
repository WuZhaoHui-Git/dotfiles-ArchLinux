function fish_prompt -d "Write out the prompt"
	# This shows up as USER@HOST /home/user/ >, with the directory colored
	# $USER and $hostname are set by fish, so you can just use them
	# instead of using `whoami` and `hostname`
	printf '%s@%s %s%s%s > ' $USER $hostname \
			(set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

if status is-interactive # Commands to run in interactive sessions can go here
	# No greeting
	set fish_greeting

	# Shipped theme
	# Use starship
	ln -sf ~/.config/starship/catppuccin-powerline.toml ~/.config/starship.toml
	starship init fish | source
	# if test -f ~/.local/state/quickshell/user/generated/terminal/sequences.txt
	#     cat ~/.local/state/quickshell/user/generated/terminal/sequences.txt
	# end

	# Use oh-my-posh
	# oh-my-posh init fish --config /usr/share/oh-my-posh/themes/iterm2.omp.json | source

	# Aliases
	alias pamcan pacman
	alias ls 'eza --icons'
	alias clear "printf '\033[2J\033[3J\033[1;1H'"
	alias q 'qs -c ii'

end
