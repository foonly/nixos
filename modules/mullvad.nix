{
  config,
  pkgs,
  ...
}: {
  services.mullvad-vpn.enable = true;

  environment.systemPackages = with pkgs; [
    mullvad-vpn
    mullvad-browser
	transmission_3-gtk
  ];
}
