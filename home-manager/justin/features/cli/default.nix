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
    lazygit

    # rust
    rustc
    cargo
    rustfmt
    rust-analyzer
    clippy
    bacon

    tokei

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
    eza = {
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
