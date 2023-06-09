# homebrew
CPU=$(uname -m)
if [[ "$CPU" == "arm64" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  export PATH=/opt/homebrew/bin:$PATH
  eval "$(/usr/local/bin/brew shellenv)"
fi

alias ibrew="arch -x86_64 /usr/local/bin/brew"
alias abrew="arch -arm64 /opt/homebrew/bin/brew"

if [ "$TERMINAL_EMULATOR" != "JetBrains-JediTerm" ]; then
  if [ "$TMUX" = "" ]; then tmux; fi
  # Set name of the theme to load. Optionally, if you set this to "random"
  # it'll load a random theme each time that oh-my-zsh is loaded.
  # See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
fi
ZSH_THEME="powerlevel10k/powerlevel10k"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


fpath=(/usr/local/share/zsh-completions $fpath)
# If you come from bash you might have to change your $PATH.
# export PATH=/opt/homebrew/bin:$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export PATH=$HOME/Library/Python/3.7/bin:$PATH
export PATH='/usr/local/sonarqube/bin/macosx-universal-64':$PATH
export PATH=$HOME/.cargo/bin:$PATH

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

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

# aarch64
if [[ "$CPU" == "arm64" ]]; then
  export PATH=/opt/homebrew/bin:$PATH

  alias j11='export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"'
  alias j17='export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"'

  alias n16='export PATH="/opt/homebrew/opt/node@16/bin:$PATH"'
  alias n19='export PATH="/opt/homebrew/opt/node@19/bin:$PATH"'

  #export PATH="/opt/homebrew/opt/node@16/bin:$PATH"
  #export LDFLAGS="-L/opt/homebrew/opt/node@16/lib"
  #export CPPFLAGS="-I/opt/homebrew/opt/node@16/include"

  export PATH="/opt/homebrew/opt/node@19/bin:$PATH"
  export LDFLAGS="-L/opt/homebrew/opt/node@19/lib"
  export CPPFLAGS="-I/opt/homebrew/opt/node@19/include"
  
  export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
  export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
else
  alias j11='export PATH="/usr/local/opt/openjdk@11/bin:$PATH"'
  alias j17='export PATH="/usr/local/opt/openjdk@17/bin:$PATH"'

  # jekyll
  export PATH="/usr/local/opt/ruby@3.0/bin:$PATH"
  export LDFLAGS="-L/usr/local/opt/ruby@3.0/lib"
  export CPPFLAGS="-I/usr/local/opt/ruby@3.0/include"

  export PATH="/usr/local/opt/node@16/bin:$PATH"
  export LDFLAGS="-L/usr/local/opt/node@16/lib"
  export CPPFLAGS="-I/usr/local/opt/node@16/include"

  export PATH="/usr/local/opt/openjdk@17/bin:$PATH"
  export PATH="/usr/local/opt/mysql-client/bin:$PATH"
fi


# export EDITOR='/usr/local/bin/mvim -v'
export EDITOR='nvim'


# Add Visual Studio Code (code)
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin":$PATH

# Groovy
export GROOVY_HOME=/usr/local/opt/groovy/libexec


alias v='nvim'
alias vi='nvim'
alias vim='nvim'
DEFAULT_USER="kimmyeongjae"

# alias nvim='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'
#alias v='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'

alias ll='ls -alF'
alias la='ls -aF'
alias l='ls -F'

alias t='open -a Typora'
alias o='code'
alias nr='npm run'
alias y='yarn'
alias p='pnpm'
alias px='pnpx'
alias rs='rush'
alias rx='rushx'
alias awski='aws --profile ki'
alias awsecr='aws --profile ecr'

alias cat='bat'
alias ls='exa'
alias openj="open -a 'IntelliJ IDEA'"
alias openw="open -a 'WebStorm'"

alias k='kotlin'
alias kc='kotlinc'

alias medis="nohup npx electron /Users/kimmyeongjae/projects/medis &"

alias g='bit'


alias sshcpbr='ssh -i ~/.ssh/carri-prod-bastion-root.pem ec2-user@vpn.carri.to'
alias sshcpbj='ssh -i ~/.ssh/carri-prod-bastion-j.pem j@vpn.carri.to'
alias sshcbbr='ssh -i ~/.ssh/carri-beta-bastion-root.pem ec2-user@vpn.betacarri.to'
alias sshcbbj='ssh -i ~/.ssh/carri-beta-bastion-j.pem j@vpn.betacarri.to'
alias sshzb='ssh -i ~/.ssh/carri-beta-bastion-j.pem -NL 1081:10.101.11.95:8080 j@vpn.betacarri.to'
alias sshzp='ssh -i ~/.ssh/carri-prod-bastion-j.pem -NL 1080:10.91.10.68:8080 j@vpn.carri.to'
alias sshmj='ssh -i ~/.ssh/mj-service.pem ec2-user@api.myeongjae.kim'
alias sshmjsb='ssh -i ~/.ssh/mj-service.pem -NL 3003:localhost:3000 ec2-user@api.myeongjae.kim'

alias tf='terraform'


# cd + ls
function cd {
    builtin cd "$@"
    ls -F
}


# solving of (ValueError: unknown locale: UTF-8)
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8


# Change directory color
export LSCOLORS=exfxcxdxbxegedabagacad

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/bitcomplete bit

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# bash parameter completion for the Rush CLI
_rush_bash_complete()
{
  local word=${COMP_WORDS[COMP_CWORD]}

  local completions
  completions="$(rush tab-complete --position "${COMP_POINT}" --word "${COMP_LINE}" 2>/dev/null)"
  if [ $? -ne 0 ]; then
    completions=""
  fi

  COMPREPLY=( $(compgen -W "$completions" -- "$word") )
}

complete -f -F _rush_bash_complete rush


# lazygit auto-completion
lg()
{
    export LAZYGIT_NEW_DIR_FILE=~/.lazygit/newdir

    lazygit "$@"

    if [ -f $LAZYGIT_NEW_DIR_FILE ]; then
            cd "$(cat $LAZYGIT_NEW_DIR_FILE)"
            rm -f $LAZYGIT_NEW_DIR_FILE > /dev/null
    fi
}

# Android App
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


complete -o nospace -C /usr/local/bin/terraform terraform

# pnpm
export PNPM_HOME="/Users/mj/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH=`gem environment gemdir`/bin:$PATH
#export PATH="/opt/homebrew/opt/ruby@2.7/bin:$PATH"
#
export PATH="$HOME/go/bin:$PATH"


# Load rbenv automatically by appending
# the following to ~/.zshrc:

eval "$(rbenv init - zsh)"


export NODE_BINARY="/opt/homebrew/opt/node@19/bin/node"
alias bnet='"/Volumes/Game\ Porting\ Toolkit-1.0/gameportingtoolkit-no-hud ~/my-game-prefix "C:\users\crossover\Downloads\Battle.net-Setup.exe'
