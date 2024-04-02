{
  config,
  pkgs,
  ...
}: {
  services.greetd.enable = true;
  services.greetd.vt = 8;
  services.greetd.settings = {
    default_session = {
      command = "${pkgs.greetd.greetd}/bin/agreety --cmd Hyprland";
    };
  };
}
