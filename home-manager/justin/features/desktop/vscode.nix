{ pkgs, ... }: {
  programs.vscode = {
    enable = true;
    package = pkgs.vscode-fhs;
    extensions = with pkgs.vscode-extensions; [
      rust-lang.rust-analyzer
      vscodevim.vim
      eamodio.gitlens

      # for NodeJS work
      bradlc.vscode-tailwindcss
      dbaeumer.vscode-eslint
      esbenp.prettier-vscode
    ];
    userSettings = {
      "files.autoSave" = "afterDelay";
      "vim.smartRelativeLine" = true;
    };
  };
}
