# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)

{ inputs, outputs, lib, config, pkgs, ... }: {
  # You can import other home-manager modules here
  imports = [
    # If you want to use modules your own flake exports (from modules/home-manager):
    # outputs.homeManagerModules.example

    # Or modules exported from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModules.default

    # You can also split up your configuration and import pieces of it here:
    # ./nvim.nix
  ];

  nixpkgs = {
    # You can add overlays here
    overlays = [
      # Add overlays your own flake exports (from overlays and pkgs dir):
      outputs.overlays.additions
      outputs.overlays.modifications
      outputs.overlays.unstable-packages

      # You can also add overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default

      # Or define it inline, for example:
      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    ];
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      allowUnfreePredicate = (_: true);
    };
  };

  home = {
    username = "justin";
    homeDirectory = "/home/justin";
  };

  # Add stuff for your user as you see fit:
  # programs.neovim.enable = true;
  home.packages = with pkgs; [
    microsoft-edge
    nodejs_20
    rustup

    # nix neovim pack
    alejandra
    deadnix
    statix
    rnix-lsp

    (pkgs.nerdfonts.override { fonts = [ "DroidSansMono" ]; })
  ];

  # Enable home-manager and git
  programs.home-manager.enable = true;
  programs.git = {
    enable = true;
    userName = "Justin Perez";
    userEmail = "26028834+melotic@users.noreply.github.com";
    difftastic.enable = true;

    extraConfig = {
      commit.gpgSign = true;
      gpg.format = "ssh";
      user.signingkey = "/home/justin/.ssh/id_ed25519_sk.pub";
    };
  };
  programs.alacritty = {
    enable = true;

    # custom settings
    settings = {
      env.TERM = "xterm-256color";
      font = {
        size = 12;

        normal.family = "DroidSansM Nerd Font";
        bold.family = "DroidSansM Nerd Font";
        italic.family = "DroidSansM Nerd Font";
      };
    };
  };
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
  };

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "23.05";
}
