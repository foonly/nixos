{ config, pkgs, ... }:

{
  virtualisation.docker.enable = true;

  environment.systemPackages = with pkgs; [
    git
    lazygit
    nodejs_20
    corepack
    vscodium
    dbeaver
    php83Packages.composer
  ];

}
