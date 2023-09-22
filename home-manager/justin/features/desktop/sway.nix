{ pkgs, ... }: {
  wayland.windowManager.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
    systemd.enable = true;
    xwayland = true;
    config = rec {
      modifier = "Mod4";
      terminal = "alacritty";
      fonts = {
        size = 10.0;
      };
      gaps = {
        inner = 10;
        outer = 10;
      };
      output = {
        "DP-2" = {
          mode = "2560x1440@165.070Hz";
          position = "1920,-100";
        };
        "HDMI-A-1" = {
          mode = "1920x1080@75.402Hz";
          position = "0,0";
        };
      };
    };
  };

  home.sessionVariables = {
    MOZ_ENABLE_WAYLAND = 1;
  };

  home.packages = with pkgs; [
    wl-clipboard
  ];
}
