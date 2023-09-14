{ pkgs, ... }: {
  imports = [
    ./alacritty.nix
    ./edge.nix
    ./font.nix
    ./spotify.nix
    ./vscode.nix
  ];

  home.packages = with pkgs; [
    bitwarden
    slack
  ];
}
