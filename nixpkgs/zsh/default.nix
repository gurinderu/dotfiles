let pkgs = import <nixpkgs> { };
in
{
  enable = true;
  #enableCompletion = true;
  #enableAutosuggestions = true;
  history = {
    extended = true;
    save = 50000;
    share = true;
    size = 50000;
    ignoreSpace = true;
  };
  initExtra = ''
    source "$HOME/.sdkman/bin/sdkman-init.sh"
      '';
  oh-my-zsh = {
    enable = true;
    plugins = [ "git" "history" "brew" "docker" "sbt" "scala" "sudo" ];
    custom = "${pkgs.spaceship-prompt}/share/zsh";
    theme = "spaceship";
  };
  shellAliases = {
    ls = "exa";
    ll = "exa -la --icons";
    ping = "prettyping";
  };
}
 
