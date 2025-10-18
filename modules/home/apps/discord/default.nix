{ pkgs, ... }:

{
  imports = [./settings.nix];
  
  home.packages = [
    (pkgs.discord.override {
      withVencord = true;
    })
  ];
  
  xdg.configFile."Vencord/themes/theme.css".text = ''
    @import url('https://refact0r.github.io/midnight-discord/build/midnight.css');

    body {
      --font: 'Iosevka Nerd Font';
      --code-font: ${"''"};
      font-weight: 400;

      --gap: 12px;
      --divider-thickness: 4px;
      --border-thickness: 1px;

      --animations: on;
      --list-item-transition: 0.2s ease;
      --dms-icon-svg-transition: 0.4s ease;
      --border-hover-transition: 0.2s ease;

      --top-bar-height: var(--gap);
      --top-bar-button-position: titlebar;
      --top-bar-title-position: off;
      --subtle-top-bar-title: off;

      --custom-window-controls: on;
      --window-control-size: 14px;

      --custom-dms-icon: custom;
      --dms-icon-svg-url: url('https://refact0r.github.io/midnight-discord/assets/Font_Awesome_5_solid_moon.svg');
      --dms-icon-svg-size: 90%;
      --dms-icon-color-before: var(--icon-secondary);
      --dms-icon-color-after: var(--white);
      --custom-dms-background: off;
      --dms-background-image-url: url(${"''"});
      --dms-background-image-size: cover;
      --dms-background-color: linear-gradient(70deg, var(--blue-2), var(--purple-2), var(--red-2));

      --background-image: off;
      --background-image-url: url(${"''"});

      --transparency-tweaks: off;
      --remove-bg-layer: off;
      --panel-blur: off;
      --blur-amount: 12px;
      --bg-floating: var(--bg-3);

      --custom-chatbar: aligned;
      --chatbar-height: 47px;
      --chatbar-padding: 8px;

      --small-user-panel: on;
    }

    :root {
      --colors: on;

      --text-0: var(--bg-3);
      --text-1: #eceff4;
      --text-2: #e5e9f0;
      --text-3: #d8dee9;
      --text-4: hsl(220, 20%, 67%);
      --text-5: #4c566a;

      --bg-1: #434c5e;
      --bg-2: #3b4252;
      --bg-3: #272b35;
      --bg-4: #2e3440;
      --hover: hsla(220, 20%, 50%, 0.1);
      --active: hsla(220, 20%, 50%, 0.2);
      --active-2: hsla(220, 20%, 50%, 0.3);
      --message-hover: hsla(0, 0%, 0%, 0.1);

      --accent-1: var(--blue-1);
      --accent-2: var(--blue-2);
      --accent-3: var(--blue-3);
      --accent-4: var(--blue-4);
      --accent-5: var(--blue-5);
      --accent-new: var(--accent-2);
      --mention: linear-gradient(to right, color-mix(in hsl, var(--accent-2), transparent 90%) 40%, transparent);
      --mention-hover: linear-gradient(to right, color-mix(in hsl, var(--accent-2), transparent 95%) 40%, transparent);
      --reply: linear-gradient(to right, color-mix(in hsl, var(--text-3), transparent 90%) 40%, transparent);
      --reply-hover: linear-gradient(to right, color-mix(in hsl, var(--text-3), transparent 95%) 40%, transparent);

      --online: var(--green-2);
      --dnd: var(--red-2);
      --idle: var(--yellow-2);
      --streaming: var(--purple-2);
      --offline: var(--text-4);

      --border-light: hsla(220, 20%, 50%, 0.05);
      --border: hsla(220, 20%, 50%, 0.1);
      --border-hover: hsla(220, 20%, 50%, 0.1);
      --button-border: hsl(0, 0%, 100%, 0.1);

      --red-1: hsl(354, 42%, 61%);
      --red-2: #bf616a;
      --red-3: #bf616a;
      --red-4: hsl(354, 42%, 51%);
      --red-5: hsl(354, 42%, 46%);

      --green-1: hsl(92, 28%, 70%);
      --green-2: #a3be8c;
      --green-3: #a3be8c;
      --green-4: hsl(92, 28%, 60%);
      --green-5: hsl(92, 28%, 55%);

      --blue-1: hsl(193, 43%, 72%);
      --blue-2: #88c0d0;
      --blue-3: #88c0d0;
      --blue-4: hsl(193, 43%, 62%);
      --blue-5: hsl(193, 43%, 57%);

      --yellow-1: hsl(40, 71%, 78%);
      --yellow-2: #ebcb8b;
      --yellow-3: #ebcb8b;
      --yellow-4: hsl(40, 71%, 68%);
      --yellow-5: hsl(40, 71%, 63%);

      --purple-1: hsl(311, 20%, 68%);
      --purple-2: #b48ead;
      --purple-3: #b48ead;
      --purple-4: hsl(311, 20%, 58%);
      --purple-5: hsl(311, 20%, 53%);
    }
  '';
}
