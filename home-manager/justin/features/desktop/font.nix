{ pkgs, ... }: {
  home.packages = with pkgs; [
    (pkgs.nerdfonts.override { fonts = [ "DroidSansMono" ]; })
  ];
}
