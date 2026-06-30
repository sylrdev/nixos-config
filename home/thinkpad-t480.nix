{ pkgs, ... }:

{
	home.username = "sylr";
	home.homeDirectory = "/home/sylr";

	home.packages = with pkgs; [
		# programs
		librewolf
		vesktop

		# cli scripts
		fastfetch
		btop

		# workflow
		yazi
		lazygit
		tmux
	];

	imports = [
		./modules/neovim.nix
		./modules/zsh.nix
		./modules/ghostty.nix
		./modules/git.nix
	];

	programs.zsh.shellAliases = {
		nor = "sudo nixos-rebuild switch --flake .#thinkpad-t480";
		nor-test = "sudo nixos-rebuild test --flake .#thinkpad-t480";
		ff = "fastfetch";
	};

	home.stateVersion = "26.05";

	programs.home-manager.enable = true;
}
