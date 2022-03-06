# Silence bash deprecated warning
export BASH_SILENCE_DEPRECATION_WARNING=1

# fzf - fuzzy finder for bash
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# vi key bindings
set -o vi

# Starship prompt
eval "$(starship init bash)"

