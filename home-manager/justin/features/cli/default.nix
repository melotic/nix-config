{ pkgs, ... }: {
  imports = [
    ./fish.nix
    ./git.nix
    ./neovim.nix
    ./ssh.nix
    ./starship.nix
    ./tmux.nix
    ./yubikey.nix
    ./zellij.nix
  ];

  home.packages = with pkgs; [
    bitwarden-cli
    deploy-rs
    ripgrep
    rustup

    # nix neovim pack
    alejandra
    deadnix
    statix
    rnix-lsp

    gcc
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
