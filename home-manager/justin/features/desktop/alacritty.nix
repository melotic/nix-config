{ pkgs, ... }: {
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
    };
  };
}
