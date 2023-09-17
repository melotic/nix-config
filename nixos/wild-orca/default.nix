{ pkgs, inputs, ... }: {
  imports = [
    inputs.hardware.nixosModules.common-cpu-amd
    inputs.hardware.nixosModules.common-gpu-amd
    inputs.hardware.nixosModules.common-pc-ssd

    ./hardware-configuration.nix

    ../common/global
    ../common/users/justin.nix

    ../common/optional/dev.nix
    ../common/optional/pipewire.nix
    ../common/optional/podman.nix
    ../common/optional/sway.nix
    ../common/optional/systemd-boot.nix
  ];

  boot.initrd.secrets = {
    "/crypto_keyfile.bin" = null;
  };

  networking = {
    hostName = "wild-orca";
  };

  services.xserver.videoDrivers = [ "amdgpu" ];

  system.stateVersion = "23.11";
}
