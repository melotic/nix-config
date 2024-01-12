{ pkgs, config, ... }: {
  users.users.justin = {
    isNormalUser = true;
    shell = pkgs.fish;
    extraGroups = [
      "wheel"
      "networkmanager"
      "video"
      "wireshark"
    ];
    openssh.authorizedKeys.keys = [
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC7WdLk7bQesw5BuaaixXGlSBLwZqghLHbSKN/f+yHg0Fjugl4KVcc/7C10SpbGUh2X9Os0SMBaUhrmg/99mir1fetGKajO7gP7OuhCYRyDnZ+3wZPlCEEvQoaFolZq6n67LSvuBoM5KYYw7Scl8VztEKz7qY4vWYR58YPNfq9jrkLd5eJvixmQ1/1PPPxfD73SVqN9zd6d7fdcuIyGvlfOQAxD+4Xn8MBnR+ZuomvaEI6GWKWXEy21IFd8E6P2sG702jKkKjCrXYPwbs5cJTdbu8A9QJFspZAW2ysxzhNZA3VXIE9DiDBrVsBPJMuyww0Gi9+2o7yEhpbq6gDnFJPI+QVq/S+htFEY7cqw+4MLKEkHGQkUn8BRGI8N742YgSjKfCMQfMND22MTA1gbbVSrBLIJvdXmrCi4206XRmQNeBzx+ja5/QP1b1uFaDL5c5F8+wGa4kW2bbQoDxOOb7iT2nkmpNdmHi1rZhl0kcYyKc75brFJNUjlVXnn3/o3554de5cYPdcYA8FvGi3taJ4EtRjV6rYzjWuq4lQrQy3TzN0OFM+tE5qPomRKIvqiKjTC3+ycxHP9e92dov/HeqcFNAFlZ/T3zMYfh7kousUuvO5oEmwg012e/C2nRyV2j1t8xAaiR9p0EX6VXtyAH5n44ef5x/PRih8KIhO+r03lYQ== cardno:23_916_824"
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGJRVVmBXgrdUKu4BtckRm2b3GxC09abP4QixmCZP/3k justinmp@vt.edu"
    ];
  };
}
