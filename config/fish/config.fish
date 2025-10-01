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

    if test -n $DISPLAY
        ln -snf ~/.config/starship/catppuccin-powerline.toml ~/.config/starship.toml
    else
        ln -snf ~/.config/starship/bracketed-segments.toml ~/.config/starship.toml
    end
    # Shipped theme
    # Use starship
    if command -v starship &>/dev/null
        starship init fish | source
    end
end
