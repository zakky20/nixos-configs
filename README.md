<h1 align="center">❄️ NixOS Config</h1>

<h1 align="center">Welcome to my NixOS configuration built for efficiency.


<img width="1920" height="1080" alt="screenshot" src="https://github.com/user-attachments/assets/e5132b53-43dc-46c7-a7ea-ad282395af86" />


## ✨ Features

- 🎨 **Nord Theme**: A perfect blend of frosted colors
- 🪟 **Qtile**: 10/10 Window manager for X11
- 🏠 **Home Manager**: lots of stuff configured in the nix way.
- 🌟 **Zsh + starship**: Efficient shell setup with lots of aliases and tweaks.

## 🚀 Installation

To get started with this setup, follow these steps:

1. **Install NixOS**: If you haven't already installed NixOS, follow the [NixOS Installation Guide](https://nixos.org/manual/nixos/stable/#sec-installation) for detailed instructions.
2. **Clone the Repository**:

	```bash
    git clone https://github.com/zakky20/nixos-configs
    cd nixos-configs
    ```
	
3. **Put your `hardware-configuration.nix` file there**:

    ```bash
    cp /etc/nixos/hardware-configuration.nix ./
    ```

4. **Edit the `flake.nix` with your user, description, etc..**

5. **Rebuild**:

	```bash
    sudo nixos-rebuild switch --flake ~/NixOS#nixos (replace #nixos with ur hostname)
    ```
	
## 🤝 Contributions

Feel free to fork the repository and submit pull requests if you'd like to contribute improvements. Open issues if you encounter any problems with the config or have ideas for new features.
