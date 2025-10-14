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
      
      # FastFetch
      fastfetch
      
      # Countdown function
      cdown () {
        N=$1
        while [[ $((--N)) -gt  0 ]]
        do
          echo "$N" | figlet -c | lolcat && sleep 1
        done
      }
      
      # Evals
      eval "$(starship init zsh)"
      eval "$(zoxide init zsh)"
      eval "$(fzf --zsh)"
    '';
    
    shellAliases = {
      snr = "sudo nixos-rebuild switch --flake ~/NixOS#nixos";
      ncg = "sudo nix-collect-garbage -d";
      nst = "nix-search-tv print | fzf --preview 'nix-search-tv preview {}' --scheme history";
      
      ls = "eza --color=always --icons=always";
      la = "eza -a --color=always --icons=always --group-directories-first";
      ll = "eza -l --color=always --icons=always --group-directories-first";
      lt = "eza -aT --color=always --icons=always --group-directories-first";
      "l." = "eza -al --color=always --icons=always --group-directories-first ../";
      "l.." = "eza -al --color=always --icons=always --group-directories-first ../../";
      "l..." = "eza -al --color=always --icons=always --group-directories-first ../../../";
      
      psa = "ps auxf";
      psgrep = "ps aux | grep -v grep | grep -i -e VSZ -e";
      psmem = "ps auxf | sort -nr -k 4";
      pscpu = "ps auxf | sort -nr -k 3";
      
      df = "df -h";
      free = "free -m";
      grep = "grep --color=auto";
      
      cmatrix = "cmatrix -C blue";
      
      cd = "z";
      cat = "bat";
      c = "clear";
      
      vim = "nvim";
      e = "emacsclient -c -a 'emacs'";
      ff = "fastfetch";
      
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
    };
  };
  
  home.sessionPath = [
    "$HOME/.local/bin"
    "$HOME/.cargo/bin"
    "$HOME/.spicetify"
  ];

}
