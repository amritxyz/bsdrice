# local .kshrc for fubar

# . /etc/ksh.kshrc

PS1="[\u@\h \W]\$ "
export PATH="$PATH:$HOME/.local/bin"
#aliases
alias l='ls -l'
alias ll='ls -lF'
alias rr='cd ~/.local/src/bsd-dwm && ls -lF'
set -o vi
alias c='clear'
alias t='tmux'
alias ta='tmux a'
alias e='exit'
alias torrent='transmission-cli'
alias rr='cd $HOME/.local/src/bsd-dwm && ls -AF'
alias h='cd $HOME/ && ls -AF'
alias cf='cd $HOME/.config && ls -AF'
alias wal='cd $HOME/.local/share/void-wall && ls -AF'
alias mu='cd $HOME/.local/music && ls -AF'
alias dl='cd $HOME/Downloads && ls -AF'
alias dox='cd $HOME/.local/dox && ls -AF'
alias dev='cd $HOME/.local/dev && ls -AF'
alias pra='cd $HOME/.local/practice && ls -AF'
alias vid='cd $HOME/.local/vids && ls -AF'
alias img='cd $HOME/.local/img && ls -AF'
alias sss='cd $HOME/.local/ss && ls -AF'
alias nt='cd $HOME/.local/dox/notes && ls -AF'
alias gitr='cd $HOME/.local/git-repos && ls -AF'
alias hs='cd $HOME/.local/hugo-dir && ls -AF'
alias hss='hugo server --noHTTPCache'
alias pa='doas pkg_add -vi'
alias pu='doas pkg_add -uvi'
alias pi='doas pkg_info | grep'
alias pd='doas pkg_delete'
alias ..='cd .. && ls -AF'
alias ...='cd ../../ && ls -AF'
alias ff='neofetch'
alias mkdir='mkdir -p'
alias sudo='doas'
alias yta-mp3='yt-dlp --extract-audio --audio-format mp3 '
alias ytv-best='yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4 '
#git_aliases
alias g='git'
alias gst='git status'
alias gc='git commit -m'
alias ga='git add'
alias gpl='git pull'
alias gac='git add . && git commit -m'
alias gf='git fetch'
alias glg='git log'
alias gpu="git push"
