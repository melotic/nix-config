{ pkgs, ... }: {
  imports = [
    ./fish.nix
    ./git.nix
    ./neovim.nix
    ./pgp.nix
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
    rustup
    bacon
    grcov
    cargo-llvm-cov
    cargo-watch

    tokei

    # nix neovim pack
    alejandra
    deadnix
    statix
    rnix-lsp
    prettierd
    marksman

    luajitPackages.luarocks

    azure-cli
    azure-functions-core-tools

    just

    gcc
    musl

    terraform

    hugo
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
    direnv = {
      enable = true;
    };
  };
}
