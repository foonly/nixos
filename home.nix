{
  config,
  pkgs,
  ...
}: {
  home-manager.useUserPackages = true;
  home-manager.useGlobalPkgs = true;

  home-manager.users.niklas = {pkgs, ...}: {
    home.stateVersion = "23.11";

    programs.bash.enable = true;

    home.shellAliases = {
      pn = "pnpm";
      ls = "eza --icons --group-directories-first --hyperlink --git";
    };
    home.sessionPath = [
      "$HOME/bin"
      "$HOME/.config/composer/vendor/bin"
    ];

    programs.git = {
      enable = true;
      userName = "Niklas Schönberg";
      userEmail = "niklas@uplink.fi";
    };

    programs.starship = {
      enable = true;
    };

    services.ssh-agent.enable = true;

    home.pointerCursor = {
      gtk.enable = true;
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Classic";
      size = 16;
    };

    gtk = {
      enable = true;
      theme = {
        package = pkgs.arc-theme;
        name = "Arc-Dark";
      };

      iconTheme = {
        package = pkgs.beauty-line-icon-theme;
        name = "BeautyLine";
      };

      font = {
        name = "Sans";
        size = 11;
      };
    };

    home.packages = with pkgs; [
      eza
      dig
      librewolf
      thunderbird
      vivaldi
    ];
  };
}
