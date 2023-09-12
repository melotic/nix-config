{ pkgs, config, ... }: {
  users.user.justin = {
    isnormalUser = true;
    shell = pkgs.fish;
    extraGroups = [
      "wheel"
      "networkmanager"
      "video"
    ];
    openssh.authorizedKeys.keys = [
      "sk-ssh-ed25519@openssh.com AAAAGnNrLXNzaC1lZDI1NTE5QG9wZW5zc2guY29tAAAAIPt78gAOaxaF0mboPlJZK/Lec5TjGERYOwN3WZpPj0jwAAAABHNzaDo= justin@wild-orca"
    ];
  };
}
