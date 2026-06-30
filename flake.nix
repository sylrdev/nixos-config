{
	description = "My NixOS configuration";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};
  	};

	outputs = { self, nixpkgs, home-manager, ... }: 
	let
		system = "x86_64-linux";
	in
	{
		nixosConfigurations.thinkpad-t480 = nixpkgs.lib.nixosSystem {
			inherit system;

			modules = [
				./hosts/thinkpad-t480/configuration.nix

				home-manager.nixosModules.home-manager

				{
					home-manager.useGlobalPkgs = true;
					home-manager.useUserPackages = true;
					
					home-manager.users.sylr = import ./home/thinkpad-t480.nix;
				}
			];
		};
  	};
}
