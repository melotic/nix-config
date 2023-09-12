{ inputs, ... }: {
  imports = [
    ./global

    ./features/cli
    ./features/desktop
  ];
  colorscheme = inputs.nix-colors.colorSchemes.nord;
}
