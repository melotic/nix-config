{ pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix

    ../common/global
    ../common/users/justin.nix
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking = {
    hostName = "trinity";
  };

  hardware.bluetooth.enable = true;

  system.stateVersion = "23.11";
}
