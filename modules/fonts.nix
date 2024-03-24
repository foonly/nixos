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
      barlow
      zilla-slab
      font-awesome
      (nerdfonts.override {fonts = ["FiraCode"];})
    ];

    fontconfig = {
      defaultFonts = {
        serif = ["Zilla Slab" "DejaVu Serif"];
        sansSerif = ["Barlow" "DejaVu Sans"];
        monospace = ["FiraCode"];
      };
    };
  };
}
