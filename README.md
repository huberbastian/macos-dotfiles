# 💻 MacOS Config Files

Aerospace with [Catppuccin](https://catppuccin.com/) colors.

<img width="1512" height="982" alt="Screenshot 2025-11-17 at 19 45 37" src="https://github.com/user-attachments/assets/c5a4034e-cd9c-410a-9e33-6ecae53adba1" />

## Components

| Category | Software |
|----------|----------|
| 🪟 Window Management | [Aerospace](https://github.com/nikitabobko/AeroSpace) |
| 🖼️ Window Borders | [JankyBorders](https://github.com/FelixKratz/JankyBorders) |
| 📟 Terminal | [Ghostty](https://ghostty.org/) |
| 🐚 Shell | [Zsh](https://www.zsh.org/) |
| 🖋️ Prompt | [Starship](https://starship.rs/) ( / [Oh My Posh](https://ohmyposh.dev/)) |
| 📝 Editor | [LazyVim](https://www.lazyvim.org/) |

## Usage

1. If not already installed, install [Homebrew](https://brew.sh/) 
2. Install GNU Stow with:
```bash
brew install stow
```
3. Clone the repository and run stow to create symlinks
```bash
mkdir -p ~/dotfiles
git clone https://github.com/huberbastian/macos-dotfiles.git ~/dotfiles
cd ~/dotfiles
stow .
```
or all in one:
```bash
mkdir -p ~/dotfiles && git clone https://github.com/huberbastian/macos-dotfiles.git ~/dotfiles && cd ~/dotfiles && stow .
```
