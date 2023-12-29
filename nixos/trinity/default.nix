{ pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix

    ../common/global
    ../common/optional/systemd-boot.nix
    ../common/users/justin.nix
  ];

  networking = {
    hostName = "trinity";
  };

  hardware.bluetooth.enable = true;

  system.stateVersion = "23.11";
}
