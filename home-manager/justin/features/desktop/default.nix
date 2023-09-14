{ pkgs, ... }: {
  imports = [
    ./font.nix
    ./edge.nix
    ./alacritty.nix
    ./spotify.nix
    ./vscode.nix
  ];

  home.packages = with pkgs; [
    bitwarden
    slack
  ];
}
