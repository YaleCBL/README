# Useful shell aliases (macOS / zsh)
# Copy aliases into ~/.zprofile to make them available in all terminal sessions
# See README.md for setup

# ls / listing
export CLICOLOR=1            # enable color for ls (BSD/macOS)
alias ls='ls -G'            # color
alias ll='ls -lhG'          # long format, human-readable sizes
alias la='ls -lahG'         # ll, plus hidden dotfiles
alias l='ls -CFG'           # compact columns, mark dirs/links
alias lt='ls -lhGtr'        # sort by time, newest last

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# search
alias grep='grep --color=auto'

# git
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gl='git log --oneline --graph --decorate -20'
alias gd='git diff'
alias gco='git checkout'
alias gb='git branch'

# misc
alias df='df -h'                    # disk free, human-readable
alias du='du -h'                    # disk usage, human-readable
alias path='echo -e ${PATH//:/\\n}' # print PATH one entry per line
alias ip='ipconfig getifaddr en0'   # local IP (Wi-Fi on most Macs)
alias reload='source ~/.zprofile'   # re-apply config after editing