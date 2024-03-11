{ config, pkgs, ... }:

{
  programs.hyprland.enable = true;
  
  environment.systemPackages = with pkgs; [
    waybar
    dex
    wofi
    hyprpaper
    hypridle
    hyprlock
    mako
    networkmanagerapplet
    swayosd
    pavucontrol
    wlogout
    nerdfonts
	nwg-look
	libsForQt5.qt5ct
	qt6Packages.qt6ct
	wl-clipboard
	clipman
	grimblast
  ];

}
