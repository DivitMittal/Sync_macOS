### ADDING TO THE PATH
# First line removes the path; second line sets it.  Without the first line,
# your path gets massive and fish becomes very slow.
set --erase fish_user_paths
set --universal fish_user_paths $HOME/.local/bin $HOME/Applications $fish_user_paths
fish_add_path (brew --prefix coreutils)/libexec/gnubin
fish_add_path /usr/local/bin
fish_add_path (brew --prefix file-formula)/bin
fish_add_path (brew --prefix ed)/bin
fish_add_path (brew --prefix grep)/libexec/gnubin

# Uses vim as manpager
set -x MANPAGER '/bin/bash -c "vim -MRn -c \"set buftype=nofile showtabline=0 ft=man ts=8 nomod nolist norelativenumber nonu noma\" -c \"normal L\" -c \"nmap q :qa<CR>\"</dev/tty <(col -b)"'

# Removes the default fish greeting 
set fish_greeting

# Sets the default editor to neovim
set EDITOR "nvim"
set VISUAL "nvim"

### Aliases ####
# Changing "ls" to "exa"
alias ll='exa -al --icons --color=always --group-directories-first --header' # long format
alias la='exa -a --icons --color=always --group-directories-first'  # all 
alias ls='exa --icons --color=always --group-directories-first'  # prefered
alias lt='exa -aT --icons --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Shortcuts
alias dt='cd ~/Desktop'
alias dl='cd ~/Downloads'

# Path environment variable info
alias paths='echo "Found "(count $PATH)" paths in PATH env var"'
alias path='echo $PATH'

# Get week number
alias week='date +%V'

# Brew ultimate alias
alias brew-ultimate='brew update && brew upgrade && brew autoremove && brew cleanup - s && brew bundle dump --force && rm -rf (brew --cache)'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Recursively delete `.DS_Store` files
alias cleanup_DS="find . -type f -name '*.DS_Store' -ls -delete"

# Empty the Trash on all mounted volumes and the main HDD.
# Also, clear Apple’s System Logs to improve shell startup speed.
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"

# Confirm before overwriting more than 3 files
alias cp='cp -I'
alias mv='mv -I'
alias rm='rm -I'

# Typing Test and you must have Lemnos/tt installed 
alias tt="command tt -t 30 -n 50 --theme homebrew"

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# switch between shells
# Not recommend switching default SHELL from bash
alias tobash="sudo chsh -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh -s /bin/zsh && echo 'Now log out.'"
alias tofish="sudo chsh -s /usr/local/bin/fish && echo 'Now log out.'"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /usr/local/Caskroom/miniconda/base/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

# Run Neofetch
neofetch

# Starship custom prompt
starship init fish | source

