{
  config,
  pkgs,
  ...
}: {
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.niklas = {
    isNormalUser = true;
    description = "Niklas Schönberg";
    extraGroups = ["networkmanager" "wheel" "docker"];
  };
}
