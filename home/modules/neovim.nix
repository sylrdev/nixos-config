{ pkgs, ... }:

{
	programs.neovim = {
		enable = true;

		viAlias = true;
		vimAlias = true;
		defaultEditor = true;

		plugins = with pkgs.vimPlugins; [
			oil-nvim
			mini-icons
			nvim-web-devicons
		];
	};

	home.packages = with pkgs; [
	];

	xdg.configFile."nvim".source = ./../../config/nvim;
}
