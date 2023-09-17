{ inputs, ... }: {
  imports = [
    ./global

    ./features/cli
    ./features/desktop
    ./features/pentest
  ];
  colorscheme = inputs.nix-colors.colorSchemes.nord;
}
