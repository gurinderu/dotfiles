{ config, pkgs, ... }:

with import <nixpkgs> { };
with builtins;


{

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "gurinderu";
  home.homeDirectory = "/Users/gurinderu";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  programs.bash.enable = true;
  home = {
    packages = [
      pkgs.neovim
      pkgs.zsh
      pkgs.oh-my-zsh
      pkgs.starship
      pkgs.spaceship-prompt
      pkgs.htop
      pkgs.unzip
      pkgs.wget
      pkgs.gnupg
      pkgs.mc
      pkgs.nixpkgs-fmt
      pkgs.git
      pkgs.nerdfonts
      pkgs.rustup
    ];
    sessionVariables = {
      LANG = "en_US.UTF-8";
      LC_CTYPE = "en_US.UTF-8";
      LC_ALL = "en_US.UTF-8";
    };
  };
  programs = {
    git = {
      enable = true;
      userEmail = "gurinderu@gmail.com";
    };
    starship = import ./starship;
    neovim = import ./neovim;
    zsh = import ./zsh;
  };
}

