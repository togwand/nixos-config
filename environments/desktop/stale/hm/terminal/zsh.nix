{pkgs, ...}: {
  programs.zsh = {
    enable = true;
    dotDir = ".zsh";
    defaultKeymap = "viins";
    enableCompletion = true;
    # envExtra = '''';
    # loginExtra = '''';
    # logoutExtra = '''';
    # profileExtra = '''';
    # localVariables = {};
    # sessionVariables = {};
    # initExtraFirst = '''';
    initExtraBeforeCompInit = ''
      zmodload zsh/complist
    '';
    completionInit = ''
      autoload -U compinit
      zstyle ':completion:*' menu select
      compinit
    '';
    autosuggestion = {
      enable = true;
      strategy = [
        "history"
        "completion"
      ];
    };
    plugins = [
      # {
      #   name = "zsh-completions";
      #   src = pkgs.fetchFromGitHub {
      #     owner = "b4b4r07";
      #     repo = "enhancd";
      #     rev = "v2.2.1";
      #     sha256 = "0iqa9j09fwm6nj5rpip87x3hnvbbz9w9ajgm6wkrd5fls8fn8i5g";
      #   };
      # }
    ];
    history = {
      path = "$ZDOTDIR/.zsh_history";
      share = true;
      save = 20000;
      size = 20000;
      ignorePatterns = [
        "cd *"
        "cl"
        "ra"
      ];
    };
    historySubstringSearch = {
      enable = false;
    };
    initExtra = ''
      # Default options to false
      unsetopt HIST_FCNTL_LOCK
      unsetopt HIST_IGNORE_DUPS
      unsetopt HIST_IGNORE_SPACE
      unsetopt SHARE_HISTORY
      # Active options
      setopt autolist
      setopt listambiguous
      setopt listpacked
      setopt listrowsfirst
      setopt globdots
      setopt histexpiredupsfirst
      setopt histfcntllock
      setopt histfindnodups
      setopt histignorespace
      setopt histreduceblanks
      setopt incappendhistory
      # Custom prompts
      export PROMPT='%n:'
      export RPROMPT='%0~ %t'
    '';
    shellAliases = {
      ".." = "cd ..";
      "cl" = "clear";
      "ra" = "ranger";
      "hl" = "Hyprland";
      "re" = "systemctl reboot";
      "off" = "systemctl poweroff";
    };
    syntaxHighlighting = {
      enable = true;
      highlighters = [
        "main"
        "brackets"
        "pattern"
      ];
      patterns = {
      };
      styles = {
      };
    };
  };
}