#!/usr/bin/env fish

function add_path
    if not contains --index "$argv" $fish_user_paths &>/dev/null
        fish_add_path "$argv"
    else
        echo "The $argv exits in the path"
    end
end

function remove_path
    if set -l index (contains -i "$argv" $fish_user_paths)
        set -e fish_user_paths[$index]
        echo "Removed $argv from the path"
    end
end

add_path $HOME/bin &>/dev/null
add_path $HOME/.local/bin &>/dev/null
