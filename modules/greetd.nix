{
  config,
  pkgs,
  ...
}: {
  #services.cage.enable = true;
  services.greetd.enable = true;
  programs.regreet.enable = true;
  programs.regreet.cageArgs = ["-s" "-m" "last"];
}
