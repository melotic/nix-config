{ pkgs, ... }: {
  services = {
    xserver = {
      enable = true;
      displayManager.gdm = {
        enable = true;
        autoSuspend = false;
        wayland = true;
      };
    };
  };

  services.dbus.enable = true;
  security.polkit.enable = true;
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
      xdg-desktop-portal-wlr
    ];
  };
}
