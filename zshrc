# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/joaquingumuciolabbe/.oh-my-zsh

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
export UPDATE_ZSH_DAYS=1

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

# Use NeoVim instead of vim
# alias vim="nvim"

# ----- Start Weeshing aliases ------
alias weeshing="cd /Users/joaquingumuciolabbe/Projects/weeshing"
alias wapi="cd /Users/joaquingumuciolabbe/Projects/weeshing/api && ./start.sh"
alias wpublic="cd /Users/joaquingumuciolabbe/Projects/weeshing/public && npm start"
alias wbackend="cd /Users/joaquingumuciolabbe/Projects/weeshing/backend && meteor -p 3020"
alias wproducers="cd /Users/joaquingumuciolabbe/Projects/weeshing/producers && meteor -p 3030"

# DB Backup
alias db-backup="mongodump --host candidate.55.mongolayer.com --db production \
  --port 10184 -u jjgl -p Dg342WDDniCY3txkM --out /tmp/weeshing-db \
  --excludeCollection activity_actions \
  --excludeCollection mails_sent \
  --excludeCollection orionsoft_activitylogger_actions \
  --excludeCollection orionsoft_activitylogger_sessions \
  --excludeCollection event_views \
  --excludeCollection event_activities \
  --excludeCollection constest_participants \
  --excludeCollection roadmap_task_posts \
  --excludeCollection dictionary \
  --excludeCollection stockholders_posts_responses\
  --excludeCollectionsWithPrefix brands"
alias db-restore="mongorestore -h 127.0.0.1 --port 3001 -d meteor /tmp/weeshing-db/production && rm -rf /tmp/weeshing-db"

# Meteor package dirs
export METEOR_PACKAGE_DIRS=/Users/joaquingumuciolabbe/Projects/weeshing/packages
export MAIL_URL="smtps://AKIAJIUJS3JXVGO3PCIQ:Agk5qHE2I6OV58JdKQJGzHC48F5W2jqYc2v2nB60BARl@email-smtp.us-east-1.amazonaws.com:465"
# ----- End Weeshing aliases ------

# ----- Stard Sodlab aliases
alias sodlab="cd /USers/joaquingumuciolabbe/Projects/sodlab"

# Yarn path setup
export PATH="$PATH:`yarn global bin`"

# Go language workspace
export GOPATH=$HOME/Projects/golang
export GOBIN=$HOME/Projects/golang/bin

# Rust-lang source path:
export RUST_SRC_PATH=~/.multirust/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src

# Avoid file table overflow
ulimit -n 65536 65536

# Fuzzy file finder setup (FZF)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/usr/local/sbin:$PATH"

# Expo XDE React Editor
export REACT_EDITOR=mvim
