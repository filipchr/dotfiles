# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.composer/vendor/bin
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export PATH=$PATH:"/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/local/mysql/bin:/opt/local/bin"
export PATH="$(brew --prefix homebrew/php/php70)/bin:$PATH"
export MYSQL_PATH=/usr/local/Cellar/mysql/5.7.17
export PATH=$PATH:$MYSQL_PATH/bin

export ANDROID_HOME=~/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

export PATH=/usr/local/bin:/usr/local/sbin:$PATH

export ZPLUG_HOME="$HOME/.zplug"
# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
export TERM="xterm-256color"
source ~/.zplug/init.zsh
source ~/.zsh/aliases.zsh

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="cloud"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="false"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# User configuration
# export PATH="/usr/local/bin:/usr/bin:/bin::/usr/sbin:/sbin"
PATH=/usr/bin:/bin:/usr/sbin:/sbin

# add custom, local installations to PATH
PATH=/usr/local/bin:/usr/local/sbin:"$PATH"

# add MacPorts to PATH
PATH=/opt/local/bin:/opt/local/sbin:"$PATH"

export PATH

source $ZSH/oh-my-zsh.sh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

zplug "b4b4r07/emoji-cli"
zplug "zsh-users/zsh-syntax-highlighting"
export ZPLUG_HOME="$HOME/.zplug"
source "$ZPLUG_HOME/init.zsh"
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_DEFAULT_OPTS="--exact --color bg+:10,hl:5,hl+:5,pointer:7,spinner:2,info:3"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export EMOJI_CLI_KEYBIND="^e"

zplug "zplug/zplug"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "b4b4r07/emoji-cli"
zplug load

plugins=(git emoji-cli zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Node Path for NPM
# export NODE_PATH="$NODE_PATH:/usr/local/lib/node_modules"
#export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin
# Add RVM to PATH for scripting
#export PATH="./bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

ssh-add -A 2>/dev/null;
