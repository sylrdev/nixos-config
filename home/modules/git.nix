{ pkgs, ... }:

{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "sylrdev";
        email = "sylrdev@gmail.com";
      };
      init.defaultBranch = "master";
    };
  };

  home.packages = with pkgs; [
    github-cli
  ];
}
