{ config, pkgs, ... }: {
  virtualisation.oci-containers = {
    backend = "podman";
    containers = { };
  };
}
