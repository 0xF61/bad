set MOZ_USE_XINPUT2 1
set DEFAULT 1

export LESSHISTFILE=-
export BROWSER=firefox
export EDITOR=vim
export TERM=xterm

alias tmux="tmux -2u"
alias dy="dig +noall +answer +additional $argv[1] @dns.toys"

bind \en "commandline -a ' &| vim -'"

fish_config theme choose 'ayu Mirage'
fish_config prompt choose minimalist
