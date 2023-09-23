{ pkgs, config, ... }: {
  programs.alacritty = {
    enable = true;

    # custom settings
    settings = {
      env.TERM = "xterm-256color";
      font = {
        size = 12;

        normal.family = "DroidSansM Nerd Font";
        bold.family = "DroidSansM Nerd Font";
        italic.family = "DroidSansM Nerd Font";
      };

      # use nix-colors
      colors = {
        primary = {
          foreground = "#${config.colorScheme.colors.base05}";
          background = "#${config.colorScheme.colors.base00}";
        };

        # normal colors
        normal = {
          black = "#${config.colorScheme.colors.base00}";
          red = "#${config.colorScheme.colors.base08}";
          green = "#${config.colorScheme.colors.base0B}";
          yellow = "#${config.colorScheme.colors.base0A}";
          blue = "#${config.colorScheme.colors.base0D}";
          magenta = "#${config.colorScheme.colors.base0E}";
          cyan = "#${config.colorScheme.colors.base0C}";
          white = "#${config.colorScheme.colors.base05}";
        };
      };
    };
  };
}
