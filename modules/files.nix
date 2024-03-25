{
  config,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    cinnamon.xreader
    xarchiver
    libreoffice
  ];
}
