{ libs, outputs, ... }: {
  imports = [
    ./fish.nix
    ./fwupd.nix
    ./locale.nix
    ./nix.nix
    ./openssh.nix
    ./tailscale.nix
    ./yubikey.nix
  ] ++ (builtins.attrValues outputs.nixosModules);

  nixpkgs = {
    overlays = builtins.attrValues outputs.overlays;
    config.allowUnfree = true;
  };

  hardware.enableRedistributableFirmware = true;

  networking.networkmanager.enable = true;
  systemd.services.NetworkManager-wait-online.enable = false;

  environment.enableAllTerminfo = true;
}
