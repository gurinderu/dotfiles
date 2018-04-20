source /usr/local/share/antigen/antigen.zsh

POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
POWERLEVEL9K_MODE='nerdfont-complete'

autoload bashcompinit
bashcompinit

#vim setup
alias vimdiff='nvim -d'
export EDITOR=nvim
alias vim=nvim
alias vi=nvim -R
alias admin="cd ~/IdeaProjects/admin"

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
antigen theme bhilburn/powerlevel9k powerlevel9k
antigen apply

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

