{ config, lib, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    
    autocd = true;
    dotDir = "${config.xdg.configHome}/zsh";
    
    initContent = ''
      # Interactive comments
      setopt interactive_comments
      setopt PROMPT_SUBST
      
      # Color script
      fastfetch

      # Countdown function
      cdown () {
        N=$1
        while [[ $((--N)) -gt  0 ]]
        do
          echo "$N" | figlet -c | lolcat && sleep 1
        done
      }
      
      # IFS handling
      SAVEIFS=$IFS
      IFS=$(echo -en "\n\b")
      export PATH="$HOME/.local/bin:$PATH"

      # Evals
      eval "$(starship init zsh)"
      eval "$(zoxide init zsh)"
      eval "$(fzf --zsh)"
    '';
    
    shellAliases = {
      # Package Manager Aliases
      snr = "sudo nixos-rebuild switch --flake ~/NixOS#nixos";
      ncg = "sudo nix-collect-garbage -d";
      ns = "nix-search-tv print | fzf --preview 'nix-search-tv preview {}' --scheme history";
      
      # Eza
      ls = "eza --color=always --icons=always";
      la = "eza -a --color=always --icons=always --group-directories-first";
      ll = "eza -l --color=always --icons=always --group-directories-first";
      lt = "eza -aT --color=always --icons=always --group-directories-first";
      "l." = "eza -al --color=always --icons=always --group-directories-first ../";
      "l.." = "eza -al --color=always --icons=always --group-directories-first ../../";
      "l..." = "eza -al --color=always --icons=always --group-directories-first ../../../";
      
      # Ps
      psa = "ps auxf";
      psgrep = "ps aux | grep -v grep | grep -i -e VSZ -e";
      psmem = "ps auxf | sort -nr -k 4";
      pscpu = "ps auxf | sort -nr -k 3";
      
      # Df, Free, Grep better
      df = "df -h";
      free = "free -m";
      grep = "grep --color=auto";
      
      # Cmatrix
      cmatrix = "cmatrix -C blue";

      # Zoxide instead of cd
      cd = "z";

      # Bat instead of cat 
      cat = "bat";
      
      # Clear
      c = "clear";
      
      # Neovim to Vim
      vim = "nvim";
      
      # FastFetch
      ff = "fastfetch";
      
      # Compiling Alias
      smi = "sudo make install";
      smci = "sudo make clean install";
    };

    sessionVariables = {
      TERMINAL = "alacritty";
      BROWSER = "firefox";
      TERM = "xterm-256color";
      EDITOR = "nvim";
      XDG_CONFIG_HOME = "$HOME/.config";
      XDG_CACHE_HOME = "$HOME/.cache";
      PATH = "$HOME/.local/bin:$PATH";
    };
    
    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [
        "git"
      ];
    };
    
    plugins = [
      {
        name = "zsh-autosuggestions";
        src = pkgs.fetchFromGitHub {
          owner = "zsh-users";
          repo = "zsh-autosuggestions";
          rev = "v0.7.0";
          sha256 = "sha256-KLUYpUu4DHRumQZ3w59m9aTW6TBKMCXl2UcKi4uMd7w=";
        };
      }
      {
        name = "fast-syntax-highlighting";
        src = pkgs.fetchFromGitHub {
          owner = "zdharma-continuum";
          repo = "fast-syntax-highlighting";
          rev = "v1.55";
          sha256 = "sha256-DWVFBoICroKaKgByLmDEo4O+xo6eA8YO792g8t8R7kA=";
        };
      }
    ];
  };
  
  home.sessionPath = [
    "$HOME/.local/bin"
    "$HOME/.cargo/bin"
    "$HOME/.spicetify:$PATH"
  ];
}
