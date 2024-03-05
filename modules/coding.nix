{ config, pkgs, ... }:

{
  virtualisation.docker.enable = true;

  environment.systemPackages = with pkgs; [
    git
    lazygit
    nodejs_21
    vscodium
    dbeaver
  ];

}
