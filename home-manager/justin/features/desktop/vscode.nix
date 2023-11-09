{ pkgs, ... }: {
  programs.vscode = {
    enable = true;
    package = pkgs.vscode-fhs;
    extensions = with pkgs.vscode-extensions; [
      rust-lang.rust-analyzer
      vscodevim.vim
      eamodio.gitlens
    ];
    userSettings = {
      "files.autoSave" = "afterDelay";
      "vim.smartRelativeLine" = true;
    };
  };
}
