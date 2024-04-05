{
  config,
  pkgs,
  ...
}: {
  services.greetd = {
    enable = true;
    vt = 8;
    settings = {
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet -r --asterisks --time --cmd Hyprland";
      };
    };
  };
  environment.systemPackages = with pkgs; [
    greetd.tuigreet
  ];
}
