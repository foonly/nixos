{
  config,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    pcloud
  ];
}
