# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[[ "$(fgconsole 2>/dev/null)" -eq 1 ]] && exec startx > /dev/null 2>&1

export DISPLAY=:0

# Default programs
export EDITOR="nvim"
export TERMINAL="st"
export TERMINAL_PROG="st"
export BROWSER="firefox"

# Environment variables
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export PATH="$PATH:$HOME/.local/bin"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"

# Prompt configuration
PS1="[\u@\h \W]\$ "
export PROMPT_COMMAND="history -a; history -n"

# Shell options and settings
shopt -s autocd
stty -ixon
export HISTSIZE=1000
export HISTFILESIZE=2000
export HISTCONTROL=ignoredups:ignorespace
export HISTTIMEFORMAT="%F %T "
shopt -s histappend

# Aliases
alias ls='ls -F'
alias l='ls -lF'
alias la='ls -AF'
alias ll='ls -lAF'
alias c='clear'
alias t='tmux'
alias kt='pkill tmux'
alias ta='tmux a'
alias e='exit'
alias torrent='transmission-cli'
alias rr='cd $HOME/.local/src/bsd-dwm && ls -a'
alias h='cd $HOME/ && ls -a'
alias cf='cd $HOME/.config && ls -a'
alias wal='cd $HOME/.local/share/void-wall && ls -a'
alias mu='cd $HOME/.local/music && ls -a'
alias dl='cd $HOME/Downloads && ls -a'
alias dox='cd $HOME/.local/dox && ls -a'
alias dev='cd $HOME/.local/dev && ls -a'
alias pra='cd $HOME/.local/practice && ls -a'
alias vid='cd $HOME/.local/vids && ls -a'
alias img='cd $HOME/.local/img && ls -a'
alias sss='cd $HOME/.local/ss && ls -a'
alias nt='cd $HOME/.local/dox/notes && ls -a'
alias gitr='cd $HOME/.local/git-repos && ls -a'
alias hs='cd $HOME/.local/hugo-dir && ls -a'
alias hss='hugo server --noHTTPCache'
alias ff='neofetch'
alias pa='doas pkg_add -vi'
alias pu='doas pkg_add -uvi'
alias pi='doas pkg_info | grep'
alias pd='doas pkg_delete'
alias ..='cd .. && ls -a'
alias ...='cd ../../ && ls -a'
alias yta-aac="yt-dlp --extract-audio --audio-format aac "
alias yta-best="yt-dlp --extract-audio --audio-format best "
alias yta-flac="yt-dlp --extract-audio --audio-format flac "
alias yta-mp3="yt-dlp --extract-audio --audio-format mp3 "
alias ytv-best="yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4 "
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias mkdir='mkdir -p'
alias sudo='doas'

# Git aliases
alias g="git"
alias gst="git status"
alias gc="git commit -m"
alias ga="git add"
alias gpl="git pull"
alias gpom="git push origin master"
alias gpu="git push"
alias gpuom="git push origin main"
alias gd="git diff"
alias gch="git checkout"
alias gnb="git checkout -b"
alias gac="git add . && git commit -m"
alias grs="git restore --staged ."
alias gre="git restore"
alias gr="git remote"
alias gcl="git clone"
alias gt="git ls-tree -r master --name-only"
alias gb="git branch"
alias gf="git fetch"
alias glg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold green)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold yellow)(%ar)%C(reset)%C(auto)%d%C(reset)%n%  C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
