{ pkgs, ... }: {
  imports = [
    ./caddy.nix
    ./containers.nix
    ./netdata.nix
  ];
}
