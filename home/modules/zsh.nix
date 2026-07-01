{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      nor = "sudo nixos-rebuild switch --flake .#thinkpad-t480";
      nor-test = "sudo nixos-rebuild test --flake .#thinkpad-t480";
      ff = "fastfetch";

      # rokit tools
      rojo = "~/.rokit/bin/rojo";
      wally = "~/.rokit/bin/wally";
      wally-package-types = "~/.rokit/bin/wally-package-types";
      tungsten = "~/.rokit/bin/tungsten";
    };

  };
}
