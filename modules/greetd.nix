{ config, pkgs, ... }:

{
	#services.cage.enable = true;
	programs.regreet.enable = true;
	services.greetd = {
      enable = true;
      restart = false;
      settings = {
        default_session = {
       		command = "cage -s -- regreet";
        	user = "greeter";
        };
      };
    };

  environment.systemPackages = with pkgs; [
      cage
	  greetd.tuigreet
  ];
}
