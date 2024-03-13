{
  config,
  pkgs,
  ...
}: {
  programs.hyprland.enable = true;
  programs.thunar.enable = true;
  security.pam.services.greetd.enableKwallet = true;

  programs.thunar.plugins = with pkgs.xfce; [thunar-archive-plugin thunar-volman];

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
    kdePackages.ksshaskpass
    kdePackages.kwallet
    kdePackages.kwallet-pam
  ];
}
