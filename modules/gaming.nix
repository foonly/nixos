{
  config,
  pkgs,
  ...
}: {
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    gamescopeSession.enable = true;
    package = pkgs.steam.override {
      extraPkgs = pkgs:
        with pkgs; [
          libkrb5
          keyutils
          gamescope
        ];
    };
  };

  environment.systemPackages = with pkgs; [
    protonup-qt
    mangohud
    gamemode
  ];
}
