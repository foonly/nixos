{
  config,
  pkgs,
  ...
}: {
  virtualisation.docker.enable = true;

  environment.systemPackages = with pkgs; [
    git
    lazygit
    nodejs_20
    corepack
    vscodium
    php83Packages.composer
    php83
    gnumake
    lapce
    nodePackages.intelephense
    postman
    zed-editor
  ];
}
