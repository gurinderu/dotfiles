source ~/.antigen/antigen.zsh
source "$HOME/.sdkman/bin/sdkman-init.sh"

stty sane

POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history)
POWERLEVEL9K_MODE='nerdfont-complete'
ALIAS_FILE=~/.alias
export PATH=$PATH:$HOME/.local/bin

autoload -Uz compinit
compinit

#vim setup
alias vimdiff='nvim -d'
export EDITOR=nvim
alias vim=nvim
alias vi=nvim -R

if [ -f $ALIAS_FILE ]; then
	source $ALIAS_FILE
fi

antigen use oh-my-zsh

antigen bundle git
antigen bundle unixorn/autoupdate-antigen.zshplugin
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle brew
antigen bundle cabal
antigen bundle docker
antigen bundle mvn
antigen bundle osx
antigen bundle sbt
antigen bundle scala
antigen bundle screen 
antigen bundle sudo
antigen bundle tmux
#antigen theme bhilburn/powerlevel9k powerlevel9k
antigen bundle git@github.com:spwhitt/nix-zsh-completions.git
antigen theme romkatv/powerlevel10k
antigen apply


export SBT_OPTS="-XX:MaxMetaspaceSize=512m -Xms1024m -Xmx1024m"
source <(kubectl completion zsh)

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
