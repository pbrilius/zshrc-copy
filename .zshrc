# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=4

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
plugins=(git)

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
export ARCHFLAGS="-arch x86_64 -march bdver4"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="nano ~/.zshrc"
alias ohmyzsh="nano ~/.oh-my-zsh"

source $HOME/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# E565 LAMP stack target market
antigen bundle zpm-zsh/mysql-colorize
antigen bundle voronkovich/mysql.plugin.zsh
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle voronkovich/apache2.plugin.zsh
antigen bundle webyneter/docker-aliases.git
antigen bundle sroze/docker-compose-zsh-plugin
antigen bundle unixorn/docker-helpers.zshplugin
    antigen bundle voronkovich/phpcs.plugin.zsh
antigen bundle voronkovich/phpunit.plugin.zsh
antigen bundle molovo/tipz
antigen bundle KasperChristensen/mylocation
antigen bundle zpm-zsh/undollar

source $HOME/.src/emoji-cli/emoji-cli.zsh

antigen bundle 'wfxr/forgit'
FORGIT_FZF_DEFAULT_OPTS="
--exact
--border
--cycle
--reverse
--height '80%'
"

antigen bundle ael-code/zsh-colored-man-pages
antigen bundle evanthegrayt/vagrant-box-wrapper.git

# antigen bundle psprint/zsh-morpho

# zstyle ":morpho" screen-saver "zblank" # select screen saver "zmorpho"; available: zmorpho, zmandelbrot, zblank, pmorpho
                                        # this  can also be a command, e.g. "cmatrix"
# zstyle ":morpho" arguments "-s"         # arguments given to screen saver program; -s - every key press ends
# zstyle ":morpho" delay "60"            # 5 minutes before screen saver starts
# zstyle ":morpho" check-interval "15"    # check every 1 minute if to run screen saver


# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme romkatv/powerlevel10k

# Tell Antigen that you're done.
antigen apply

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias ls='lsd'

alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'


# ECTS Economics & Business Economics
PATH=$PATH:$HOME/.bin
PATH=$PATH:$HOME/.apps
PATH=$PATH:$HOME/.config/composer/vendor/bin
PATH=$PATH:$HOME/tools

# Virtulization technology
PATH=$PATH:$HOME/.apps/docker
PATH=$PATH:$HOME/.apps/docker-rootless-extras

alias src="pushd $HOME/.src"

# Temporal failure
# [[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc


# Target market virtual hosts
VHOSTS=/var/www/vhosts
alias vhosts="pushd $VHOSTS"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Temporal phpbrew /dev/stderr stream fix
# phpbrew use php-cli-latest

# Additional virtualization on docker-ce
# WARNING: systemd not found. You have to remove XDG_RUNTIME_DIR manually on every logout.
export XDG_RUNTIME_DIR=/home/povilasbrilius/.docker/run
export PATH=/home/povilasbrilius/.apps/docker-rootless-extras:$PATH
export DOCKER_HOST=unix:///home/povilasbrilius/.docker/run/docker.sock

