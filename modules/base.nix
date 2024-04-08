{
  config,
  pkgs,
  ...
}: {
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  security.polkit.enable = true;
  #security.pam.enableSSHAgentAuth = true;
  security.pam.services.greetd.sshAgentAuth = true;
  programs.ssh.startAgent = true;

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
  };
  users.defaultUserShell = pkgs.zsh;

  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
    # Add any missing dynamic libraries for unpackaged programs
    # here, NOT in environment.systemPackages
  ];

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    micro
    vim
    wget
    aw-server-rust
    aw-qt
    wezterm
    kitty
    killall
    whois
    alejandra
    libnotify
    btop
    neofetch
    cryptsetup
    bitwarden
    xorg.xeyes
  ];
}
