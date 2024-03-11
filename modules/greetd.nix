{
  config,
  pkgs,
  ...
}: {
  #services.cage.enable = true;
  services.greetd.enable = true;
  programs.regreet.enable = true;
  programs.regreet.cageArgs = ["-s" "-m" "last"];
  programs.regreet.settings = {
    background = {
      path = "/home/niklas/.local/share/wallpapers/garden-lantern.jpg";
      fit = "Cover";
    };

    GTK = {
      application_prefer_dark_theme = true;
      cursor_theme_name = "Adwaita";
      font_name = "Comic Neue 16";
      icon_theme_name = "Adwaita";
      theme_name = "Adwaita";
    };
  };

  environment.systemPackages = with pkgs; [
    comic-neue
  ];
}
