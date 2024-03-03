{ config, pkgs, ... }:

{
  #services.xserver.desktopManager.plasma5.enable = true;
  services.xserver.desktopManager.plasma6.enable = true;

  environment.systemPackages = with pkgs; [
  ];
}

 