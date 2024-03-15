{
  config,
  pkgs,
  ...
}: {
  programs.hyprland.enable = true;
  programs.thunar.enable = true;
  programs.thunar.plugins = with pkgs.xfce; [thunar-archive-plugin thunar-volman];

  programs.seahorse.enable = true;
  services.gnome.gnome-keyring.enable = true;
  security.pam.services.greetd.enableGnomeKeyring = true;

  qt.platformTheme = "qt5ct";

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
    nwg-look
    lxappearance
    libsForQt5.qt5ct
    qt6Packages.qt6ct
    wl-clipboard
    clipman
    grimblast
    arc-theme
    beauty-line-icon-theme
    adapta-gtk-theme
  ];
}
