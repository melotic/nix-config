{ pkgs, ... }: {
  fontProfiles = {
    enable = true;
    monospace = {
      family = "DroidSansM Nerd Font";
      package = (pkgs.nerdfonts.override { fonts = [ "DroidSansMono" ]; });
    };
    regular = {
      family = "Fira Sans";
      package = pkgs.fira;
    };
  };
}
