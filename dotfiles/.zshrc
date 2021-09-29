export TERM="xterm-256color"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
plugins=(
  aws
  brew
  docker
  git
  poetry
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export GPG_TTY=$(tty)
export ORACLE_HOME=/Applications/Utilities/instantclient_19_8/
export WTF_JIRA_API_KEY="j49Eu2AppztsRUK8i5uM3C30"

bindkey -v

# TODO.TXT stuff
export TODOTXT_DEFAULT_ACTION=ls
alias t='todo.sh -d ~/.todo.cfg -t'

autoload -U zmv

alias awsai='source assume --force --user justin.peterson --profile autoi --mfa -'
alias awsaius='awsai --user-session'
alias awswsprd='awsai --account 291169314679 --role WordsmithDeveloper'
alias awswsprda='awsai --account 291169314679 --role crossAccountAdminAccess'
alias awswsstg='awsai --account 367326150803 --role xaWSStageDev'
alias awswsstga='awsai --account 367326150803 --role crossAccountAdminAccess'
alias awsmsprd='awsai --account 966955918297 --role xaMSSysAd'
alias awsmsstg='awsai --account 361390504376 --role xaMSSysAd'
alias get-jenkins-ips="aws ec2 describe-instances --no-paginate --region us-east-2 --output table --query 'Reservations[*].Instances[*].{Name:Tags[?Key==\`Name\`]|[0].Value,PrivateIP:PrivateIpAddress}'"
alias testspeed='date >> $HOME/Desktop/speed-tests.txt && speedtest-cli --simple >> $HOME/Desktop/speed-tests.txt'
alias bfg='java -jar /usr/local/bin/bfg-1.14.0.jar'
alias bfg2='git reflog expire --expire=now --all && git gc --prune=now --aggressive && git push'

alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'
alias ll='ls -FGlAhp'
alias reload="source ~/.zshrc && echo ~/.zshrc has been reloaded"
alias sqldash="mysql -h engineering-metrics.cgv4d6ctfnjm.us-east-1.rds.amazonaws.com -P 3306 -u jpeterson -p engineeringmetrics"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(history time virtualenv dir vcs root_indicator)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_COLOR_SCHEME='light'
POWERLEVEL9K_DISABLE_RPROMPT=true
export PATH="/usr/local/opt/mysql-client/bin:/Users/justinpeterson/Library/Python/3.9/bin:$PATH"
