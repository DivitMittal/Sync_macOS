## ADDING TO THE PATH
set --erase fish_user_paths
fish_add_path (brew --prefix coreutils)/libexec/gnubin
fish_add_path /usr/local/bin
fish_add_path (brew --prefix file-formula)/bin
fish_add_path (brew --prefix ed)/bin
fish_add_path (brew --prefix grep)/libexec/gnubin

# Uses neovim as manpager
set -x MANPAGER 'nvim +Man!'

# Removes the default fish greeting
set fish_greeting

# Turns on Vi bindings
function fish_user_key_bindings
    # The argument specifies the initial mode (insert, "default" or visual).
    fish_vi_key_bindings insert
	# Cleans up the written line
	bind -M insert \cc kill-whole-line repaint
end

# Turns off command cursor based on vi mode
function fish_vi_cursor; end

# Turns off fish right prompt
function fish_right_prompt; end

# Turns off fish vi mode left prompt
function fish_mode_prompt; end

# Sets the default editor to neovim
set EDITOR "nvim"
set VISUAL "nvim"

### Aliases ####
# Changing "ls" to "exa" ( must have exa installed )
alias ll='exa -al --icons --color=always --group-directories-first --header' # long format
alias la='exa -a --icons --color=always --group-directories-first'  # all
alias ls='exa --icons --color=always --group-directories-first'  # prefered
alias lt='exa -aT --icons --level=1 --color=always --group-directories-first' # tree listing
alias lt2='exa -aT --icons --level=2 --color=always --group-directories-first' # tree listing
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

# Unified cheat sheet - http://cht.sh/
function cht
    curl -ssL "https://cheat.sh/$argv"
end

# Get week number
alias week='date +%V'

# Brew ultimate alias
alias brew-ultimate='brew update; and brew upgrade; and brew autoremove; and brew cleanup - s; and brew bundle dump --file=~/.Brewfile --force; and rm -rf (brew --cache); and brew cleanup'

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

# Navigation
alias ..='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

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

