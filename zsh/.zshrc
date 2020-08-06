# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Importing zshenv because apparently that isn't automatic
if [ -f "~/.zshenv" ]; then
	source ~/.zshenv
fi

# Path to your oh-my-zsh installation.
export ZSH="/root/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="qial"

# dstufft is pretty good
# rgm has time which I like
# sporty_256 I kinda like but not sure
# smt - I like commit number, need username, really like line number
# intheloop - like the style
# murilasso - very good actually
# jnrowe - ok, kinda simple
# aussiegeek - interesting, git has different style
# sonicradish & tjkirch - same as above, adds timestamp
# fino-time - same as above, nice green checkmark
# xiong-chiamiov - like top bar but too long, don't like brackets appearing after a command
# jonathan - really awesome effect, even works with multiline \ stuff


# Things I dislike:
# tjkirch_mod - way too long

# Things I Like:
# wedisagree - really like the folder and floating right git stuff
# smt - commit number on right, history line number, status for versioned or not
# 		NOTE, smt has weird placement for pyenv stuff
# intheloop - user and server, especially the colors
# murilasso - git branch is on left before command line
# rgm - git on left, good user/server, bad colors
# jispwoso - arrow is good, don't like git on right (is MacBook-Pro -> MBP hardcoded?)
# kphoen - like the colors and simple two line style, also like the pyenv integration
# skaro - too minimalist, but I like the history and git view
# darkblood - has a cool thing on the left with brackets
# rkj - good info, a bit long sometimes with full paths
# bira - nice rounded curves on the left, but looks bad with pyenv

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
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
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
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
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Fix Homebrew bullshit
export HOMEBREW_NO_INSTALL_CLEANUP=1

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias fixhostonly="VBoxManage dhcpserver remove --netname HostInterfaceNetworking-vboxnet0"
alias perup="fixhostonly && vagrant up"
alias vssh="vagrant ssh"
alias pereset="vagrant destroy -f && perup"

# Setup pyenv if the zshenv fails
alias pyenvinit='eval "$(pyenv init -)"'

# run peregrine-toolbox docker image
alias pertoolbox='docker run -it -p 8080:8080 -v $(PWD):/peregrine peregrinecms/peregrine-toolbox'
