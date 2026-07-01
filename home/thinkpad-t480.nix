{ pkgs, ... }:
let
  rokitSrc = pkgs.fetchFromGitHub {
    owner = "rojo-rbx";
    repo = "rokit";
    rev = "main";
    sha256 = "sha256-q2TleXyZOv10MYXYvSTB6ssxlVZZnFeGWrIDOJYnxyU=";
  };
in
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
    vinegar

    (rustPlatform.buildRustPackage {
      pname = "rokit";
      version = "latest";

      src = rokitSrc;

      cargoLock.lockFile = rokitSrc + "/Cargo.lock";
    })
  ];

  imports = [
    ./modules/neovim.nix
    ./modules/zsh.nix
    ./modules/ghostty.nix
    ./modules/git.nix
  ];

  services.flatpak = {
    enable = true;
    packages = [
      "org.vinegarhq.Sober"
    ];
  };

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;
}
