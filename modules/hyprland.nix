{
  config,
  pkgs,
  ...
}: {
  programs.hyprland.enable = true;
  #programs.thunar.enable = true;
  #programs.thunar.plugins = with pkgs.xfce; [thunar-archive-plugin thunar-volman];

  programs.seahorse.enable = true;
  services.gnome.gnome-keyring.enable = true;
  security.pam.services.greetd.enableGnomeKeyring = true;

  qt.platformTheme = "qt5ct";

  environment.systemPackages = with pkgs; [
    nemo
    nemo-fileroller
    dex
    foot
    fuzzel
    hyprpaper
    hypridle
    hyprlock
    networkmanagerapplet
    swayosd
    swaynotificationcenter
    pavucontrol
    pwvucontrol
    wleave
    lxappearance
    wl-clipboard
    clipman
    grimblast
    adapta-gtk-theme
    waybar
  ];
}
