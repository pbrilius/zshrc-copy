# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="apollo"

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

export MANPATH="/usr/local/man:$MANPATH"

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
antigen bundle sroze/docker-compose-zsh-plugin
    antigen bundle voronkovich/phpcs.plugin.zsh
antigen bundle voronkovich/phpunit.plugin.zsh
antigen bundle molovo/tipz
antigen bundle KasperChristensen/mylocation
antigen bundle zpm-zsh/undollar

antigen bundle 'wfxr/forgit'

# VEVO - Ubuntu LTS DE franchise
antigen bundle ael-code/zsh-colored-man-pages
antigen bundle evanthegrayt/vagrant-box-wrapper.git

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# pbgroup.eu Seagate Expansion pop-os NAZ &* SEO LJA
antigen bundle zpm-zsh/colorize
antigen bundle sineto/web-search
antigen bundle le0me55i/zsh-systemd
antigen bundle gepoch/oh-my-zsh-dirstack
antigen bundle gryffyn/mouse-status
antigen bundle oldratlee/hacker-quotes
antigen bundle brokendisk/dune-quotes
antigen bundle owenvoke/quoter-zsh
antigen bundle yous/vanilli.sh

antigen apply


FORGIT_FZF_DEFAULT_OPTS="
--exact
--border
--cycle
--reverse
--height '80%'
"


source $HOME/.source/emoji-cli/emoji-cli.zsh
# ECTS Economics & Business Economics
export PATH=$PATH:$HOME/.bin
export PATH=$PATH:$HOME/.config/composer/vendor/bin

SOURCE=$HOME/.source
alias src="pushd $SOURCE"

# Target market virtually hosted web apps
VHOSTS=/var/www/vhosts
export WORK=$VHOSTS

alias work="pushd $WORK"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# target market HQ MVC - CDN
export TARGET=$HOME/.target
alias target="pushd $TARGET"
# node-js apprehension &comprehension
export PATH=$TARGET/node-v19.4.0-linux-x64/bin:$PATH

# $ZSH prerequisites #SCSS
export FORGIT_FZF_DEFAULT_OPTS

CFLAGS="-Og -march=bdver4 -pipe"
CXXFLAGS=$CFLAGS
    export PHPBREW_SET_PROMPT=1
    export PHPBREW_RC_ENABLE=1

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

alias ls='lsd'

alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# GDP - TQM dormroom tenant apps
APPS=$HOME/.apps
alias apps="cd $APPS";


# neoliberal digital analogue to Itesta - wearepogo.co.uk
alias namai="dirs -c; pushd $HOME"


# multi-party singular noise-maker purpose folder of food & drink
HTML=/var/www/html
alias maistas="pushd $HTML"

# personal cosmic-star development akin a personality growth
alias google_news="pushd $VHOSTS/google-crawler.wddx"

# LR ipeachment aversion oer VEB EVF
antigen bundle zsh-users/zsh-completions
antigen bundle chrissicool/zsh-256color
PATH=$PATH:$HOME/.cargo/bin
antigen bundle ellie/atuin@main

autoload -U add-zsh-hook

export ATUIN_SESSION=$(atuin uuid)
export ATUIN_HISTORY="atuin history list"

_atuin_preexec() {
    local id
    id=$(atuin history start -- "$1")
    export ATUIN_HISTORY_ID="$id"
}

_atuin_precmd() {
    local EXIT="$?"

    [[ -z "${ATUIN_HISTORY_ID}" ]] && return

    (RUST_LOG=error atuin history end --exit $EXIT -- $ATUIN_HISTORY_ID &) >/dev/null 2>&1
}

_atuin_search() {
    emulate -L zsh
    zle -I

    # Switch to cursor mode, then back to application
    echoti rmkx
    # swap stderr and stdout, so that the tui stuff works
    # TODO: not this
    # shellcheck disable=SC2048
    output=$(RUST_LOG=error atuin search $* -i -- $BUFFER 3>&1 1>&2 2>&3)
    echoti smkx

    if [[ -n $output ]]; then
        RBUFFER=""
        LBUFFER=$output
    fi

    zle reset-prompt
}

_atuin_up_search() {
    _atuin_search --shell-up-key-binding
}

add-zsh-hook preexec _atuin_preexec
add-zsh-hook precmd _atuin_precmd

zle -N _atuin_search_widget _atuin_search
zle -N _atuin_up_search_widget _atuin_up_search

bindkey '^r' _atuin_search_widget
bindkey '^[[A' _atuin_up_search_widget
bindkey '^[OA' _atuin_up_search_widget

antigen bundle wuotr/zsh-plugin-vscode
antigen bundle trystan2k/zsh-tab-title

ZSH_TAB_TITLE_ONLY_FOLDER=true
ZSH_TAB_TITLE_CONCAT_FOLDER_PROCESS=true

# WDDX BDD pbgrupė.lt
PROJECTS=$HOME/.projects
alias optimus_prime="pushd $PROJECTS/optimus-prime.fdd.wddx"

eval "$(atuin init zsh)"

