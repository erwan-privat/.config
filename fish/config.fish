if status is-interactive
    # Commands to run in interactive sessions can go here
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/archaoss/miniconda3/bin/conda
    eval /home/archaoss/miniconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<


# Created by `pipx` on 2024-07-24 09:32:51
set PATH $PATH /home/archaoss/.local/bin
