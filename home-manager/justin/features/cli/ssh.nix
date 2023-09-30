{
  programs.ssh = {
    enable = true;
    extraConfig = ''
      AddKeysToAgent yes
    '';
  };

  services.gpg-agent = {
    enable = true;
    enableSshSupport = true;
  };
}
