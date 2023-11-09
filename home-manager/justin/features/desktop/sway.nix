{ pkgs, config, ... }:
let
  base00 = "#${config.colorScheme.colors.base00}";
  base01 = "#${config.colorScheme.colors.base01}";
  base02 = "#${config.colorScheme.colors.base02}";
  base03 = "#${config.colorScheme.colors.base03}";
  base04 = "#${config.colorScheme.colors.base04}";
  base05 = "#${config.colorScheme.colors.base05}";
  base06 = "#${config.colorScheme.colors.base06}";
  base07 = "#${config.colorScheme.colors.base07}";
  base08 = "#${config.colorScheme.colors.base08}";
  base09 = "#${config.colorScheme.colors.base09}";
  base0A = "#${config.colorScheme.colors.base0A}";
  base0B = "#${config.colorScheme.colors.base0B}";
  base0C = "#${config.colorScheme.colors.base0C}";
  base0D = "#${config.colorScheme.colors.base0D}";
in
{
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
          position = "1920,0";
          bg = "/home/justin/.config/sway/bg.jpg stretch";
        };
        "HDMI-A-1" = {
          mode = "1920x1080@75.402Hz";
          position = "0,0";
          bg = "/home/justin/.config/sway/bg.jpg stretch";
        };
      };
      # set colors
      colors = {
        # Property Name           Border  BG      Text    Indicator Child Border
        # client.focused          $base05 $base0D $base00 $base0D $base0D
        # client.focused_inactive $base01 $base01 $base05 $base03 $base01
        # client.unfocused        $base01 $base00 $base05 $base01 $base01
        # client.urgent           $base08 $base08 $base00 $base08 $base08
        # client.placeholder      $base00 $base00 $base05 $base00 $base00
        # client.background       $base07
        focused = {
          border = base05;
          background = base0D;
          text = base00;
          indicator = base0D;
          childBorder = base0D;
        };
        focusedInactive = {
          border = base01;
          background = base01;
          text = base05;
          indicator = base03;
          childBorder = base01;
        };
        unfocused = {
          border = base01;
          background = base00;
          text = base05;
          indicator = base01;
          childBorder = base01;
        };
        urgent = {
          border = base08;
          background = base08;
          text = base00;
          indicator = base08;
          childBorder = base08;
        };
        placeholder = {
          border = base00;
          background = base00;
          text = base05;
          indicator = base00;
          childBorder = base00;
        };
        background = base07;
      };
      bars = [
        {
          statusCommand = "i3status";
          fonts.size = 10.0;
          position = "bottom";
          colors = {
            background = base00;
            separator = base01;
            statusline = base05;
            focusedWorkspace = {
              border = base05;
              background = base0D;
              text = base00;
            };
            activeWorkspace = {
              border = base05;
              background = base03;
              text = base00;
            };
            inactiveWorkspace = {
              border = base03;
              background = base01;
              text = base05;
            };
            urgentWorkspace = {
              border = base08;
              background = base08;
              text = base00;
            };
            bindingMode = {
              border = base00;
              background = base0A;
              text = base00;
            };
          };
        }
      ];
      # keybindings = rec {
      #   "XF86AudioLowerVolume" = "exec pactl set-sink-volume @DEFAULT_SINK@ -5%";
      #   "XF86AudioMicMute" = "exec pactl set-source-mute @DEFAULT_SOURCE@ toggle";
      #   "XF86AudioMute" = "exec pactl set-sink-mute @DEFAULT_SINK@ toggle";
      #   "XF86AudioNext" = "exec playerctl next";
      #   "XF86AudioPlay" = "exec playerctl play-pause";
      #   "XF86AudioPrev" = "exec playerctl previous";
      #   "XF86AudioRaiseVolume" = "exec pactl set-sink-volume @DEFAULT_SINK@ +5%";
      #   "XF86AudioStop" = "exec playerctl stop";
      #   "XF86MonBrightnessDown" = "exec brightnessctl set 10%-";
      #   "XF86MonBrightnessUp" = "exec brightnessctl set +10%";
      # };
    };
  };

  home.sessionVariables = {
    MOZ_ENABLE_WAYLAND = 1;
  };

  home.packages = with pkgs; [
    wl-clipboard
    i3status
  ];
}

