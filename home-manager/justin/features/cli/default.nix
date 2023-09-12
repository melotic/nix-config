{ pkgs, ... }: {
  imports = [
    ./fish.nix
    ./git.nix
    ./tmux
    ./ssh.nix
    ./starship.nix
    ./yubikey.nix
  ];

  home.packages = with pkgs; [
    bitwarden-cli
    deploy-rs
    ripgrep
    rustup

    neovim
    # nix neovim pack
    alejandra
    deadnix
    statix
    rnix-lsp
  ];

  programs = {
    bat = {
      enable = true;
    };
    exa = {
      enable = true;
      enableAliases = true;
    };
    fzf = {
      enable = true;
    };
    jq = {
      enable = true;
    };
  };
}
