export LC_ALL=ja_JP.UTF-8
export LANG=ja_JP.UTF-8
export XDG_CONFIG_HOME=~/.config

# ls colors
export CLICOLOR=1;
export LSCOLORS=gxfxcxdxbxegedabagacad;
export TERM=xterm-256color
export LS_COLORS="di=36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43:"

# enchancd
export ENHANCD_FILTER=fzf:peco:percol:gof

# Homebrew
path=(
  /usr/local/bin(N-/)
  $path
)

# golang
if (( $+commands[go]  )); then
  export GOPATH=$HOME/go
  export GOROOT=$(go env GOROOT)
  path=($GOPATH/bin $path)
fi

# Volt
if (( $+commands[volt] )); then
  export VOLTPATH=~/volt
fi

#node
if (( $+commands[nodebrew] )); then
  path=($OHME/.nodebrew/current/bin $path)
fi

#python
if (( $+commands[pyenv] )); then
  path=($(pyenv root)/shims $path)
  eval "$(SHELL=zsh pyenv init - --no-rehash)"
fi

#ruby
if (( $+commands[rbenv] )); then
  path=($(rbenv root)/shims $path)
  eval "$(SHELL=zsh rbenv init - --norehash)"
fi
#export PATH=/usr/local/opt/ruby/bin:$PATH

if [ -n "$DEBUG" ]; then
	zmodload zsh/zprof && zprof
	unset DEBUG
fi

