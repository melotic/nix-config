{ config, ... }: {
  services.caddy.enable = true;
  services.tailscale.permitCertUid = config.services.caddy.user;
}
