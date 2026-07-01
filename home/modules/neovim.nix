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
			cord-nvim
			telescope-nvim
			plenary-nvim
			telescope-fzf-native-nvim
			catppuccin-nvim
		];
	};

	home.packages = with pkgs; [
		ripgrep
		fd
	];

	xdg.configFile."nvim".source = ./../../config/nvim;
}
