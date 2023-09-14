{ pkgs, ... }: {
  programs.zellij = {
    enable = true;
    enableFishIntegration = true;

    settings = {
      keybinds = {
        unbind = [ "Ctrl s" "Ctrl q" ];
      };
    };
  };
}
