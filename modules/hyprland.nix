{ config, pkgs, ... }:

{
  programs.hyprland.enable = true;
  
  environment.systemPackages = with pkgs; [
    waybar
    dex
    fuzzel
    wofi
    hyprpaper
    hypridle
    swaylock
    mako
    networkmanagerapplet
    swayosd
    pavucontrol
    wlogout
    nerdfonts
	nwg-look
	libsForQt5.qt5ct
	qt6Packages.qt6ct
  ];

}
