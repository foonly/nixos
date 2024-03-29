{
  config,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    kdePackages.filelight
    cinnamon.xreader
    xarchiver
    libreoffice
    pcloud
  ];
}
