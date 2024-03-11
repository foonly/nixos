{
  config,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    mumble
    webcord
    signal-desktop
    telegram-desktop
    whatsapp-for-linux
  ];
}
