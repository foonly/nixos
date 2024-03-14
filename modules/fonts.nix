{
  config,
  pkgs,
  ...
}: {
  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      fira-code
      ubuntu_font_family
      comic-neue
      font-awesome
      (nerdfonts.override {fonts = ["FiraCode"];})
    ];

    fontconfig = {
      defaultFonts = {
        serif = ["Ubuntu"];
        sansSerif = ["ComicNeue" "Ubuntu"];
        monospace = ["FiraCode"];
      };
    };
  };
}
