export LLVM34="/usr/local/Cellar/llvm34/3.4.2/lib/llvm-3.4/bin"
export CABALBIN="~/Library/Haskell/bin"
export PATH=$CABALBIN:$PATH
#export PATH=$LLVM34:$PATH
export EDITOR=vim
export CLICOLOR=1;
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD;
alias cp='cp -iv'
alias ll='ls -FGlAhp'
alias la='ls -laFG'
alias mkdir='mkdir -pv'
alias f='open -a Finder ./'
alias less='less -FSRXc'

export PS1="\u:\W $ "

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Base16
BASE16_SHELL="$HOME/.config/base16-shell/base16-eighties.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Add tab completion for many Bash command
if which brew > /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
  source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
  source /etc/bash_completion;
fi;

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults;
