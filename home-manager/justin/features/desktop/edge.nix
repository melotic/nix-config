{ pkgs, ... }: {
  home.packages = with pkgs; [
    microsoft-edge-dev
  ];

  # use wayland
  home.file.".config/edge-dev-flags.conf".text = ''
    --enable-features=UseOzonePlatform
    --ozone-platform=wayland
  '';
}
