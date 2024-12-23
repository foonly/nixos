{
  config,
  pkgs,
  ...
}: {
  home-manager.backupFileExtension = "hm-backup";
  home-manager.useUserPackages = true;
  home-manager.useGlobalPkgs = true;
  
  home-manager.users.niklas = {pkgs, ...}: {
    home.stateVersion = "24.11";

    programs.zsh.enable = true;

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
      enableZshIntegration = true;
    };

    programs.foot = {
      enable = true;
      # server.enable = true;
      settings = {
        main = {
          term = "xterm-256color";

          font = "Comic Code:size=12";
        };
        colors = {
          alpha = 0.7;
        };
      };
    };

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
        name = "Barlow";
        size = 11;
      };
    };

    home.packages = with pkgs; [
      dig
    ];
  };
}
