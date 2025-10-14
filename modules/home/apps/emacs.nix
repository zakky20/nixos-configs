{ config, lib, pkgs, ... }:

{
  programs.emacs = {
    enable = true;
    package = pkgs.emacs;
    extraPackages = epkgs: with epkgs; [
      doom
      vterm
      pdf-tools
      org-roam
      treesit-grammars.with-all-grammars
    ];
  };

  home.activation.installDoomEmacs = config.lib.dag.entryAfter ["writeBoundary"] ''
    if [ ! -d "${config.home.homeDirectory}/.emacs.d" ]; then
      echo "Installing Doom Emacs..."
      ${pkgs.git}/bin/git clone --depth 1 https://github.com/doomemacs/doomemacs ${config.home.homeDirectory}/.emacs.d
      # Set up environment for Doom installation
      export PATH="${pkgs.emacs}/bin:${pkgs.git}/bin:${pkgs.ripgrep}/bin:${pkgs.fd}/bin:$PATH"
      # Install Doom (this will use your symlinked config)
      if [ -x "${config.home.homeDirectory}/.emacs.d/bin/doom" ]; then
        echo "Running doom install..."
        ${config.home.homeDirectory}/.emacs.d/bin/doom install --no-env --no-hooks
      else
        echo "Error: doom binary not found after clone"
        exit 1
      fi
    else
      echo "Doom Emacs already installed"
    fi
  '';

  home.activation.syncDoomEmacs = config.lib.dag.entryAfter ["linkGeneration" "installDoomEmacs"] ''
    if [ -d "${config.home.homeDirectory}/.emacs.d" ] && [ -d "${config.home.homeDirectory}/.config/doom" ]; then
      if [ -x "${config.home.homeDirectory}/.emacs.d/bin/doom" ]; then
        echo "Syncing Doom configuration..."
        export PATH="${pkgs.emacs}/bin:${pkgs.git}/bin:${pkgs.ripgrep}/bin:${pkgs.fd}/bin:$PATH"
        ${config.home.homeDirectory}/.emacs.d/bin/doom sync || true
      else
        echo "Warning: doom binary not found, skipping sync"
      fi
    else
      echo "Doom or doom config not found, skipping sync"
    fi
  '';

  home.sessionPath = [ "${config.home.homeDirectory}/.emacs.d/bin" ];

  home.sessionVariables = {
    DOOMDIR = "${config.home.homeDirectory}/.config/doom";
    DOOMLOCALDIR = "${config.home.homeDirectory}/.local/share/doom";
  };

}
