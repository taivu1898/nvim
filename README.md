# Neovim config for C/C++

I based on NvChad and ProgrammingRainbow

Follow NvChad on https://nvchad.com

Follow ProgrammingRainbow at https://www.youtube.com/@ProgrammingRainbow

## Before install neovim

- Run the command below to install necessary dependencies

```bash
sudo apt install python3 python3-venv python3-pip nodejs git gcc make libncurses-dev curl wget build-essential clang openssh-client openssh-server unzip xclip luarocks
```

- Install nodejs at https://nodejs.org/en
- Install favorite font at https://www.nerdfonts.com/

# If you are Arch Linux user

```bash
sudo pacman -S python python-pip nodejs git gcc make ncurses curl wget base-devel clang openssh unzip xclip luarocks neovim
```

## Install neovim

Make sure you install snapd

```bash
sudo snap install neovim --classic
```

## Installation

Run the command to install my Neovim configuration

```bash
git clone https://github.com/taivu1898/nvim.git ~/.config/nvim && nvim
```

After install complete, please run the command

```bash
:MasonInstallAll
```
