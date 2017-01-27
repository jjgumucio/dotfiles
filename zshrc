# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/jjgl/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=5

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

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

# Utils aliases
alias cl="clear"

# Weeshing aliases
alias wcc="cd /Users/jjgl/Projects/wcc"
alias wapi="cd /Users/jjgl/Projects/wcc/api && bash start.sh"
alias wbackend="cd /Users/jjgl/Projects/wcc/backend && bash start.sh"
alias wproducers="cd /Users/jjgl/Projects/wcc/producers && bash start.sh"
alias wbrands="cd /Users/jjgl/Projects/wcc/brands && bash start.sh"
alias wroadmap="cd /Users/jjgl/Projects/wcc/roadmap && bash start.sh"
alias wstockholders="cd /Users/jjgl/Projects/wcc/stockholders && bash start.sh"
alias deploy-api="wcc && cd api && DEPLOY_HOSTNAME=us-east-1.galaxy-deploy.meteor.com meteor deploy weeshing.com"

# DB Backup
alias db-backup="mongodump --host candidate.55.mongolayer.com --db production --port 10184 -u jjgl -p Dg342WDDniCY3txkM --out /tmp/weeshing-db"
alias db-restore="mongorestore -h 127.0.0.1 --port 3001 -d meteor /tmp/weeshing-db/production && rm -rf /tmp/weeshing-db"

# Meteor package dirs
export METEOR_PACKAGE_DIRS=/Users/jjgl/Projects/wcc/packages:$PACKAGE_DIRS

# Avoid file table overflow
ulimit -n 65536 65536
