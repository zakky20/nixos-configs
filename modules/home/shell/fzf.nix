{ config, lib, pkgs, ... }:

{
  programs.fzf = {
    enable = true;
    
    enableZshIntegration = true;
    
    defaultCommand = "fd --hidden --strip-cwd-prefix --exclude .git";
    fileWidgetOptions = [
      "--preview 'if [ -d {} ]; then eza --tree --color=always {} | head -200; else bat -n --color=always --line-range :500 {}; fi'"
    ];
    
    changeDirWidgetCommand = "fd --type=d --hidden --strip-cwd-prefix --exclude .git";
    
    changeDirWidgetOptions = [
      "--preview 'eza --tree --color=always {} | head -200'"
    ];

    defaultOptions = [
      "--color=fg:#ECEFF4,fg+:#ECEFF4,bg:#2E3440,bg+:#3B4252"
      "--color=hl:#88C0D0,hl+:#81A1C1,info:#81A1C1,marker:#BF616A"
      "--color=prompt:#88C0D0,spinner:#A3BE8C,pointer:#BF616A,header:#5E81AC"
      "--color=border:#4C566A,label:#D8DEE9,query:#ECEFF4"
      "--border='double' --border-label='' --preview-window='border-sharp' --prompt='> '"
      "--marker='>' --pointer='>' --separator='─' --scrollbar='│'"
      "--info='right'"
      "--bind change:top"
    ];
  };
}
