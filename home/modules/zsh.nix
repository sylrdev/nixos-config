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
    };

    initContent = ''
      export PATH="$HOME/.rokit/bin/"
    '';
  };
}
