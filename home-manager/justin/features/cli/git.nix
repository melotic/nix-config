{ pkgs, ... }: {
  programs.git = {
    enable = true;
    package = pkgs.gitAndTools.gitFull;
    userName = "Justin Perez";
    userEmail = "justinmp215@gmail.com";
    aliases = {
      co = "checkout";
      cob = "checkout -b";

      tags = "tag -l";
      branches = "branch -a";
      remotes = "remote -v";

      amend = "commit -a --amend";
    };
    signing = {
      key = "key::sk-ssh-ed25519@openssh.com AAAAGnNrLXNzaC1lZDI1NTE5QG9wZW5zc2guY29tAAAAIPt78gAOaxaF0mboPlJZK/Lec5TjGERYOwN3WZpPj0jwAAAABHNzaDo=";
      signByDefault = true;
    };
    difftastic = {
      enable = true;
    };
    extraConfig = {
      branch = {
        autosetuprebase = "always";
      };
      core = {
        autocrlf = "input";
        # https://git-scm.com/docs/git-config#Documentation/git-config.txt-corefsmonitor
        fsmonitor = true;
        safecrlf = false;
        untrackedCache = true;
      };
      feature = {
        # https://git-scm.com/docs/git-config#Documentation/git-config.txt-featuremanyFiles
        manyFiles = true;
      };
      format = {
        signOff = true;
      };
      gpg = {
        format = "ssh";
      };
      init = {
        defaultBranch = "main";
      };
      push = {
        # https://git-scm.com/docs/git-config#Documentation/git-config.txt-pushdefaultgit
        default = "current";
        gpgSign = "if-asked";
      };
    };
    lfs = {
      enable = true;
    };
    includes = [
      {
        condition = "gitdir:~/work/";
        contents = {
          user.email = "justinperez@microsoft.com";
        };
      }
    ];
  };

  programs.gh = {
    enable = true;
    gitCredentialHelper.enable = true;
  };
}
