{ pkgs, ... }:

{
	programs.neovim = {
		enable = true;

		viAlias = true;
		vimAlias = true;
		defaultEditor = true;

		plugins = with pkgs.vimPlugins; [
		];
	};

	home.packages = with pkgs; [
	];

	xdg.configFile."nvim".source = ./../../config/nvim;
}
