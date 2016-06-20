# Path to your oh-my-zsh installation.
export ZSH=/Users/richard/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"

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
ENABLE_CORRECTION="true"

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

# User configuration

export PATH="/usr/local/bin:$HOME/Library/Haskell/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"
# export PYTHONPATH=$

export CLASSPATH=$CLASSPATH:/Users/richard/Documents/CS\ 4641/Homework\ 2/ABAGAIL/ABAGAIL.jar
# export PYTHONPATH='/Users/richard/Documents/CS 4641/Homework 1/scikit-learn:'$PYTHONPATH
alias jython='jython -Dpython.path=$PYTHONPATH'

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
BASE16_SHELL="$HOME/.config/base16-shell/base16-eighties.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

alias ll='ls -lh'
alias la='ls -ah'
alias lla='ls -lah'

export GOPATH=~/Go
export EDITOR=vim
export VISUAL=$EDITOR

# Command completion
autoload -U compinit
compinit
setopt completealiases

# History
setopt HIST_IGNORE_DUPS

# Prompt
autoload -U colors zsh/terminfo
colors

setprompt() {
  setopt prompt_subst
  for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
    eval PR_$color='%{$fg[${(L)color}]%}'
  done
  PR_NO_COLOR="%{$terminfo[sgr0]%}"

  # Check the UID
  if [[ $UID -gt 0 ]]; then
    eval PR_USER_OP='${PR_CYAN}#${PR_NO_COLOR}'
  elif [[ $UID -eq 0 ]]; then
    eval PR_USER_OP='${PR_RED}%#${PR_NO_COLOR}'
  fi

  if [[ -n "$SSH_CLIENT" || -n "$SSH2_CLIENT" ]]; then
    eval PR_HOST='${PR_YELLOW}%M${PR_NO_COLOR}'
  else
    eval PR_HOST='${PR_CYAN}%M${PR_NO_COLOR}'
  fi

  # PS1=$'${PR_USER}${PR_CYAN}@${PR_HOST} ${PR_GREEN}%~${PR_USER_OP} '
  PS1=$'${PR_BLUE}%~ ${PR_USER_OP} '
  PS2=$'%_>'
  RPROMPT=$'${vcs_info_msg_0}'
}
setprompt

# now let's do parse stuff
alias ps-local='parse-dashboard --appId local --masterKey test --serverURL http://localhost:1337/parse'
alias ps-prod='parse-dashboard --appId 4zKBaiXSVWtWHd7HGFc5 --masterKey TETIXGGLKFnfZWuS877C --serverURL http://doctr.v5pfmgbpni.us-east-1.elasticbeanstalk.com/parse'

# Easier screen alias for inspecting esp8266 over ftdi
alias escr='screen /dev/cu.SLAB_USBtoUART 115200'

# Aliases for editing rcs
alias vimrc='$EDITOR ~/.vimrc'
alias zshrc='$EDITOR ~/.zshrc'
