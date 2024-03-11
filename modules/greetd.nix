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
      path = "/home/niklas/.local/share/wallpapers/end_4.png";
      fit = "Cover";
    };

    GTK = {
      application_prefer_dark_theme = true;
      cursor_theme_name = "Adwaita";
      font_name = "Comic Code 16";
      icon_theme_name = "Adwaita";
      theme_name = "Adwaita";
    };
  };
}
