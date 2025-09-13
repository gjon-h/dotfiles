# Draw cat when opening terminal
# cat ~/cat.txt | lolcat

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# export PATH=/usr/local/bin:$PATH
# export PYTHONPATH=$(brew --prefix)/lib/python2.7/site-packages
# export PATH=$PATH:$(brew --prefix)/share/python
export PATH=${PATH}:/usr/local/mysql/bin
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Postgres
export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/postgresql@17/lib"
export CPPFLAGS="-I/opt/homebrew/opt/postgresql@17/include"

# Lazygit
export XDG_CONFIG_HOME="$HOME/.config"

# PHP
export PATH="/Users/gjonhajdari/.config/herd-lite/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# export MANPAGER="nvim +Man!"
export MANPAGER="hx"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_THEME=""

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting tmux)

ZSH_TMUX_AUTOSTART=true

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Fig post block. Keep at the bottom of this file.
# [[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

# Carapace
export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense' # optional
zstyle ':completion:*' format $'\e[2;37mCompleting %d\e[m'
source <(carapace _carapace)

# bun completions
[ -s "/Users/gjonhajdari/.bun/_bun" ] && source "/Users/gjonhajdari/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# custom aliases
alias bup="brew update && brew upgrade --greedy"
alias bcl="brew cleanup --prune=all"
# alias python="python3"
# alias dotfiles="git --git-dir=/Users/gjonhajdari/.dotfiles --work-tree=/Users/gjonhajdari"
# alias glo='git --no-pager log --oneline --decorate'
alias glol='git --no-pager log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset"'
alias vim="nvim"
alias c="clear"
alias lg="lazygit"

eval "$(zoxide init --cmd cd zsh)"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
fpath+=${ZDOTDIR:-~}/.zsh_functions

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify
# source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward
# source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# autoload -Uz vcs_info
# precmd() { vcs_info }
# zstyle ':vcs_info:git:*' formats '%b '
# setopt PROMPT_SUBST
# PROMPT='%F{magenta}chon%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f%F{yellow}❱%f '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Function to automatically set up a .nvmrc file
set_nvmrc() {
  echo $(nvm current) > .nvmrc
  echo "Created .nvmrc with Node version $(nvm current)"
}

# Set local git config
function gitlocal() {
  if [[ "$1" == "work" ]]; then
    git config --local user.name "Gjon Hajdari"
    git config --local user.email "gjon@kutia.net"
    git config --local user.signingkey "EF8FAC0622D8585DB57F7EAA7B72B8852BAD6209"
    echo "Switched to WORK Git profile."
  elif [[ "$1" == "personal" ]]; then
    git config --local user.name "Gjon Hajdari"
    git config --local user.email "gjon.hajdari@student.uni-pr.edu"
    git config --local user.signingkey "8A3857EDD5B2319074B8AE5038265B7F467A964C"
    echo "Switched to PERSONAL Git profile."
  else
    echo "Usage: gitlocal [work|personal]"
  fi
}

export GPG_TTY=$(tty)
export PATH="$HOME/.pgenv/bin:$HOME/.pgenv/pgsql/bin:$PATH"
export PKG_CONFIG_PATH="$(brew --prefix icu4c)/lib/pkgconfig"
export LDFLAGS="-L$(brew --prefix icu4c)/lib"
export CPPFLAGS="-I$(brew --prefix icu4c)/include"
export PATH=$PATH:$HOME/go/bin

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# Starship prompt
eval "$(starship init zsh)"
export PATH="/Users/gjonhajdari/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/Users/gjonhajdari/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"
