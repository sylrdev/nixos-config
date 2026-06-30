{ pkgs, ... }:

{
	programs.neovim = {
		enable = true;

		viAlias = true;
		vimAlias = true;
		defaultEditor = true;
	};

	home.packages = with pkgs; [
		python3
		lua5_1
	];

	xdg.configFile."nvim".source = ./../../config/nvim;
}
