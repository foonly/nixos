{
  config,
  pkgs,
  ...
}: {
  services.greetd.enable = true;
  services.greetd.settings = {
    default_session = {
      command = "${pkgs.greetd.greetd}/bin/agreety --cmd Hyprland";
    };
  };
}
