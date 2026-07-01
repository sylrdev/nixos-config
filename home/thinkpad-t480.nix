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

    (rustPlatform.buildRustPackage {
      pname = "rokit";
      version = "latest";

      src = pkgs.fetchFromGitHub {
        owner = "rojo-rbx";
        repo = "rokit";
        rev = "main";
        sha256 = "sha256-q2TleXyZOv10MYXYvSTB6ssxlVZZnFeGWrIDOJYnxyU=";
      };

      cargoLock.lockFile =
        pkgs.fetchFromGitHub {
          owner = "rojo-rbx";
          repo = "rokit";
          rev = "main";
          sha256 = "sha256-q2TleXyZOv10MYXYvSTB6ssxlVZZnFeGWrIDOJYnxyU=";
        }
        + "/Cargo.lock";
    })
  ];

  imports = [
    ./modules/neovim.nix
    ./modules/zsh.nix
    ./modules/ghostty.nix
    ./modules/git.nix
  ];

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;
}
