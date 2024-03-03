{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
	  git
    lazygit
    nodejs_21
    vscodium
  ];

}