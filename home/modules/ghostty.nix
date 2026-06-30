{ pkgs, ... }:

{
	programs.ghostty = {
		enable = true;
		package = if pkgs.stdenv.isDarwin then pkgs.ghostty-bin else pkgs.ghostty;


		enableBashIntegration = false;
		enableFishIntegration = false;
		enableZshIntegration = true;

		settings = {
			background-opacity = "0.9";
		};
	};
}
