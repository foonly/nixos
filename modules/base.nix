{ config, pkgs, ... }:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    micro
    vim
    wget
    librewolf
    thunderbird
    nerdfonts
    starship
    signal-desktop
    aw-server-rust
    aw-qt
    wezterm
 ];
}

 
