# Path to your oh-my-zsh installation.
export ZSH=/Users/morya/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

ZSH_THEME="random"
ZSH_THEME="avit"   ## morya's new favorite
ZSH_THEME="agnoster" ## someone recommand online, not that good...
ZSH_THEME="gianu"  ## morya's old default

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git osx)

# User configuration

export GOROOT=$HOME/go1.5
export GOROOT=$HOME/go1.6.3
export GOROOT=$HOME/go1.7.3
export GOOS=darwin
export GOARCH=amd64
export GOPATH=$HOME/gopath
export PATH="$HOME/bin:$GOROOT/bin:$GOPATH/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/usr/local/sbin:$PATH"

export JAVA6_HOME=/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home

NSQ_BIN="$HOME/app/nsq-0.3.8.darwin-amd64.go1.7.3/bin"
MAVEN="$HOME/app/apache-maven-3.2.5"
APACHE_FLUME="$HOME/app/apache-flume-1.6.0-bin"
TOMCAT_HOME="$HOME/app/apache-tomcat-7.0.67"
NODEJS_HOME="$HOME/app/nodejs"
export PATH="$MAVEN/bin:$APACHE_FLUME/bin:$TOMCAT_HOME/bin:$PATH:$NSQ_BIN"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias tailf='tail -f'
alias sc='scons -c'
alias s='scons -j4'

ulimit -n 10024

export WORKON_HOME=$HOME/.virtualenvs
source `which virtualenvwrapper.sh`
#source /Users/morya/.gvm/scripts/gvm

export ELECTRON_MIRROR=http://npm.taobao.org/mirrors/electron/

alias goxbuild='gox -os="darwin" -arch=amd64 '

# installed, but can't use, not enabled right now. 2016-07-08
# [[ -s "/Users/morya/.gvm/scripts/gvm" ]] && source "/Users/morya/.gvm/scripts/gvm"

export GOENVGOROOT=$HOME/.goenvs
export GOENVTARGET=$HOME/bin
export GOENVHOME=$HOME/workspace


# nvm
export NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node
export NVM_DIR="/Users/morya/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

nvm use v7.5.0
