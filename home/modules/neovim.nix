{ pkgs, ... }:

{
	programs.neovim = {
		enable = true;

		viAlias = true;
		vimAlias = true;
		defaultEditor = true;

		plugins = with pkgs.vimPlugins; [
			telescope-nvim
			plenary-nvim
			nvim-web-devicons
			oil-nvim
			mini-icons
			cord-nvim
			lualine-nvim
			catppuccin-nvim
			noice-nvim
			nvim-autopairs
		];
	};

	home.packages = with pkgs; [
		python3
		lua5_1
		fd
		ripgrep
	];

	xdg.configFile."nvim".source = ./../../config/nvim;
}
