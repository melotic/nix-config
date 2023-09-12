{
  security.pam.yubico = {
    enable = true;
    # https://upgrade.yubico.com/getapikey/
    id = "92493";
  };

  services.pcscd = {
    enable = true;
  };
}
