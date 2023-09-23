{ inputs, ... }: {
  imports = [
    ./global

    ./features/cli
    ./features/desktop
    ./features/pentest
  ];
  colorScheme = inputs.nix-colors.colorSchemes.onedark;
}
