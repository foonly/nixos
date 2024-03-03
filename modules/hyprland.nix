{ config, pkgs, ... }:

{
  programs.hyprland.enable = true;
  
  environment.systemPackages = with pkgs; [
    wezterm
    waybar
    dex
    fuzzel
    hyprpaper
    hypridle
    hyprlock
    mako
    networkmanagerapplet
    swayosd
    pavucontrol
    wlogout
    nerdfonts
  ];

}