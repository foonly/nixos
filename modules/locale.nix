{
  config,
  pkgs,
  ...
}: {
  # Select internationalisation properties.
  i18n.defaultLocale = "en_GB.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "sv_FI.UTF-8";
    LC_IDENTIFICATION = "sv_FI.UTF-8";
    LC_MEASUREMENT = "sv_FI.UTF-8";
    LC_MONETARY = "sv_FI.UTF-8";
    LC_NAME = "sv_FI.UTF-8";
    LC_NUMERIC = "sv_FI.UTF-8";
    LC_PAPER = "sv_FI.UTF-8";
    LC_TELEPHONE = "sv_FI.UTF-8";
    LC_TIME = "sv_FI.UTF-8";
  };

  # Configure keymap in X11
  services.xserver = {
    xkb.layout = "fi";
    xkb.variant = "";
  };

  # Configure console keymap
  console.keyMap = "fi";
}
