{ pkgs, ... }: {
  programs.vscode = {
    enable = true;
    extensions = [
      "rust-lang.rust-analyzer"
      "vscodevim.vim"
      "eamodio.gitlens"
    ];
  };
}
