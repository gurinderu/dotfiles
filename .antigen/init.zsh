#-- START ZCACHE GENERATED FILE
#-- GENERATED: Mon Apr 16 10:50:57 MSK 2018
#-- ANTIGEN v2.2.3
_antigen () {
	local -a _1st_arguments
	_1st_arguments=('apply:Load all bundle completions' 'bundle:Install and load the given plugin' 'bundles:Bulk define bundles' 'cleanup:Clean up the clones of repos which are not used by any bundles currently loaded' 'cache-gen:Generate cache' 'init:Load Antigen configuration from file' 'list:List out the currently loaded bundles' 'purge:Remove a cloned bundle from filesystem' 'reset:Clears cache' 'restore:Restore the bundles state as specified in the snapshot' 'revert:Revert the state of all bundles to how they were before the last antigen update' 'selfupdate:Update antigen itself' 'snapshot:Create a snapshot of all the active clones' 'theme:Switch the prompt theme' 'update:Update all bundles' 'use:Load any (supported) zsh pre-packaged framework') 
	_1st_arguments+=('help:Show this message' 'version:Display Antigen version') 
	__bundle () {
		_arguments '--loc[Path to the location <path-to/location>]' '--url[Path to the repository <github-account/repository>]' '--branch[Git branch name]' '--no-local-clone[Do not create a clone]'
	}
	__list () {
		_arguments '--simple[Show only bundle name]' '--short[Show only bundle name and branch]' '--long[Show bundle records]'
	}
	__cleanup () {
		_arguments '--force[Do not ask for confirmation]'
	}
	_arguments '*:: :->command'
	if (( CURRENT == 1 ))
	then
		_describe -t commands "antigen command" _1st_arguments
		return
	fi
	local -a _command_args
	case "$words[1]" in
		(bundle) __bundle ;;
		(use) compadd "$@" "oh-my-zsh" "prezto" ;;
		(cleanup) __cleanup ;;
		(update|purge) compadd $(type -f \-antigen-get-bundles &> /dev/null || antigen &> /dev/null; -antigen-get-bundles --simple 2> /dev/null) ;;
		(theme) compadd $(type -f \-antigen-get-themes &> /dev/null || antigen &> /dev/null; -antigen-get-themes 2> /dev/null) ;;
		(list) __list ;;
	esac
}
antigen () {
  local MATCH MBEGIN MEND
  [[ "$ZSH_EVAL_CONTEXT" =~ "toplevel:*" || "$ZSH_EVAL_CONTEXT" =~ "cmdarg:*" ]] && source "/usr/local/Cellar/antigen/2.2.3/share/antigen/antigen.zsh" && eval antigen $@;
  return 0;
}
typeset -gaU fpath path
fpath+=(/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib /Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /Users/grinder/.antigen/bundles/zsh-users/zsh-syntax-highlighting /Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew /Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/cabal /Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker /Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/mvn /Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/osx /Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/sbt /Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/scala /Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/screen /Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/sudo /Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/tmux) path+=(/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib /Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /Users/grinder/.antigen/bundles/zsh-users/zsh-syntax-highlighting /Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew /Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/cabal /Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker /Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/mvn /Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/osx /Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/sbt /Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/scala /Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/screen /Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/sudo /Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/tmux)
_antigen_compinit () {
  autoload -Uz compinit; compinit -i -d "/Users/grinder/.antigen/.zcompdump"; compdef _antigen antigen
  add-zsh-hook -D precmd _antigen_compinit
}
autoload -Uz add-zsh-hook; add-zsh-hook precmd _antigen_compinit
compdef () {}

if [[ -n "/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh" ]]; then
  ZSH="/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh"; ZSH_CACHE_DIR="/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/cache/"
fi
#--- BUNDLES BEGIN
source '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh';
source '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh';
source '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh';
source '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh';
source '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh';
source '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh';
source '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh';
source '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh';
source '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh';
source '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh';
source '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh';
source '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh';
source '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh';
source '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh';
source '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh';
source '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh';
source '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh';
source '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh';
source '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh';
source '/Users/grinder/.antigen/bundles/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh';
source '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew/brew.plugin.zsh';
source '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/cabal/cabal.plugin.zsh';
source '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/mvn/mvn.plugin.zsh';
source '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/osx/osx.plugin.zsh';
source '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/sbt/sbt.plugin.zsh';
source '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/screen/screen.plugin.zsh';
source '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/sudo/sudo.plugin.zsh';
source '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/tmux/tmux.plugin.zsh';
source '/Users/grinder/.antigen/bundles/bhilburn/powerlevel9k/powerlevel9k.zsh-theme.antigen-compat';

#--- BUNDLES END
typeset -gaU _ANTIGEN_BUNDLE_RECORD; _ANTIGEN_BUNDLE_RECORD=('https://github.com/robbyrussell/oh-my-zsh.git lib plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/git plugin true' 'https://github.com/zsh-users/zsh-syntax-highlighting.git / plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/brew plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/cabal plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/docker plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/mvn plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/osx plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/sbt plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/scala plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/screen plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/sudo plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/tmux plugin true' 'https://github.com/bhilburn/powerlevel9k.git powerlevel9k.zsh-theme theme true')
typeset -g _ANTIGEN_CACHE_LOADED; _ANTIGEN_CACHE_LOADED=true
typeset -ga _ZCACHE_BUNDLE_SOURCE; _ZCACHE_BUNDLE_SOURCE=('/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh' '/Users/grinder/.antigen/bundles/zsh-users/zsh-syntax-highlighting//' '/Users/grinder/.antigen/bundles/zsh-users/zsh-syntax-highlighting///zsh-syntax-highlighting.plugin.zsh' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew/brew.plugin.zsh' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/cabal' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/cabal/cabal.plugin.zsh' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/mvn' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/mvn/mvn.plugin.zsh' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/osx' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/osx/osx.plugin.zsh' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/sbt' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/sbt/sbt.plugin.zsh' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/scala' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/screen' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/screen/screen.plugin.zsh' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/sudo' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/sudo/sudo.plugin.zsh' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/tmux' '/Users/grinder/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/tmux/tmux.plugin.zsh' '/Users/grinder/.antigen/bundles/bhilburn/powerlevel9k/powerlevel9k.zsh-theme' '/Users/grinder/.antigen/bundles/bhilburn/powerlevel9k/powerlevel9k.zsh-theme')
typeset -g _ANTIGEN_CACHE_VERSION; _ANTIGEN_CACHE_VERSION='v2.2.3'

#-- END ZCACHE GENERATED FILE
