{ pkgs, ... }: {
  imports = [
    ./alacritty.nix
    ./edge.nix
    ./font.nix
    ./sway.nix
    ./mako.nix
    ./spotify.nix
    ./vscode.nix
  ];

  home.packages = with pkgs; [
    bitwarden
    slack
    jetbrains.rider
    jetbrains.rust-rover
    discord
  ];


  # set environment variables to fix issues on Wayland
  home.sessionVariables = {
    _JAVA_AWT_WM_NONREPARENTING = "1";
  };
}
