{ pkgs, ... }: {
  programs.zellij = {
    enable = true;
    enableFishIntegration = true;

    settings = {
      # default_layout = "compact";
      mouse_mode = true;
      copy_on_select = true;
      simplified_ui = true;
      on_force_close = "detach";
      keybinds = {
        unbind = [ "Ctrl s" "Ctrl q" ];
      };
    };
  };
}
