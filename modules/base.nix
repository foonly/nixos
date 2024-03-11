{
  config,
  pkgs,
  ...
}: {
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  programs.ssh.startAgent = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    micro
    vim
    wget
    eza
    dig
    librewolf
    thunderbird
    vivaldi
    nerdfonts
    starship
    aw-server-rust
    aw-qt
    wezterm
    killall
    whois
    alejandra
    libnotify
  ];
}
