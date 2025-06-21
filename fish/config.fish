set VIRTUAL_ENV_DISABLE_PROMPT 1

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/archaoss/conda/bin/conda
    eval /home/archaoss/conda/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/archaoss/conda/etc/fish/conf.d/conda.fish"
        . "/home/archaoss/conda/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/archaoss/conda/bin" $PATH
    end
end

if test -f "/home/archaoss/conda/etc/fish/conf.d/mamba.fish"
    source "/home/archaoss/conda/etc/fish/conf.d/mamba.fish"
end
# <<< conda initialize <<<

# Created by `pipx` on 2024-07-24 09:32:51
set PATH $PATH /home/archaoss/.local/bin

fenv source ~/.profile
abbr -a -- ca 'conda activate'
abbr -a -- ci 'mamba install -y'
abbr -a -- ta 'tmux new -A -s'

if status is-interactive
  # export XAUTHORITY=$HOME/.Xauthority
end
