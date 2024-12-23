{
  config,
  pkgs,
  ...
}: {
  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      ubuntu_font_family
      comic-neue
      barlow
      zilla-slab
      font-awesome
      nerd-fonts.fira-code
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
