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
	};
	home.sessionPath = [
		"$HOME/bin"	
	];

    programs.git = {
      enable = true;
      userName = "Niklas Schönberg";
      userEmail = "niklas@uplink.fi";
    };

    programs.starship = {
      enable = true;
      # Configuration written to ~/.config/starship.toml
      settings = {
        # add_newline = false;

        # character = {
        #   success_symbol = "[➜](bold green)";
        #   error_symbol = "[➜](bold red)";
        # };

        # package.disabled = true;
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
