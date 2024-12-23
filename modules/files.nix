{
  config,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    xarchiver
    libreoffice
    syncthing
    filezilla
  ];
}
