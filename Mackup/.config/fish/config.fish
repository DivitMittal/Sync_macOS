## ADDING TO THE PATH
set --erase fish_user_paths
fish_add_path /usr/local/bin
fish_add_path (brew --prefix coreutils)/libexec/gnubin
fish_add_path (brew --prefix file-formula)/bin

# Removes the default fish greeting
set fish_greeting

# Sets the default editor to neovim
set -U EDITOR "nvim"
set -U VISUAL "nvim"

### Aliases ####
# Changing "ls" to "exa" ( must have exa installed )
alias ll='exa -al --icons --color=always --group-directories-first --header' # long format
alias la='exa -a --icons --color=always --group-directories-first'  # all
alias ls='exa --icons --color=always --group-directories-first'  # prefered
alias lt='exa -aT --icons --level=1 --color=always --group-directories-first' # tree listing
alias lt2='exa -aT --icons --level=2 --color=always --group-directories-first' # tree listing with depth 2
alias l.='exa -a | egrep "^\."'a # hidden files

# Shortcuts
alias dt='cd ~/Desktop'
alias dl='cd ~/Downloads'

# Path environment variable info
alias paths='echo "Found '(count $PATH)' paths in PATH env var"'
alias path='echo $PATH'

# Get week number
alias week='date +%V'

# Brew ultimate alias
alias brew-ultimate='brew update; and brew upgrade; and brew autoremove; and brew cleanup - s; and brew bundle dump --file=~/.Brewfile --force; and rm -rf (brew --cache); and brew cleanup'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# macOS ultimate alias
alias macOS-ultimate='mas upgrade; and sudo softwareupdate --list'

# Recursively delete `.DS_Store` files
alias cleanup-DS="find . -type f -name '*.DS_Store' -ls -delete"

# Empty the Trash on all mounted volumes and the main HDD.
# Also, clear Apple’s System Logs to improve shell startup speed.
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"

# Navigation
alias .2='cd ../..'
alias .3='cd ../../..'

# Switch between shells on macOS only
alias tobash="sudo chsh -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh -s /bin/zsh && echo 'Now log out.'"
alias tofish="sudo chsh -s /usr/local/bin/fish && echo 'Now log out.'"

# Conda - miniconda (python package and environment manager)
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /usr/local/Caskroom/miniconda/base/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

# Run Neofetch - keep it second last command to run
neofetch

# Starship custom prompt - keep it the last command to run
starship init fish | source

