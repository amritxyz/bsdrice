# $OpenBSD: dot.profile,v 1.8 2022/08/10 07:40:37 tb Exp $
#
# sh/ksh initialization

PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin
TMUX_CONFIG=$HOME/.tmux.conf
ENV=.kshrc
TERM=screen-256color-bce
export PATH HOME TERM ENV TMUX_CONFIG TERM
