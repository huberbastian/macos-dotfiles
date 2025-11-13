# MacOS Config Files

MacOS configuration files mostly using [Catppuccin](https://catppuccin.com/) colors.

<img width="1512" height="950" alt="Screenshot 2025-11-13 at 12 00 54" src="https://github.com/user-attachments/assets/b0ee592f-e559-4213-b7fc-20755aeccd4d" />

## Components

| Category | Software |
|----------|----------|
| Window Management | [Aerospace](https://github.com/nikitabobko/AeroSpace) |
| Window Borders | [JankyBorders](https://github.com/FelixKratz/JankyBorders) |
| Terminal | [Ghostty](https://ghostty.org/) |
| Shell | [Zsh](https://www.zsh.org/) |
| Shell Prompt | [Oh My Posh](https://ohmyposh.dev/) |
| Editor | [LazyVim](https://www.lazyvim.org/) |

## Usage

1. If not already installed, install [Homebrew](https://brew.sh/) 
2. Install GNU Stow with:
```bash
brew install stow
```
3. Clone the repository and run stow to create symlinks
```bash
git clone https://github.com/huberbastian/macos-dotfiles.git ~/dotfiles
cd ~/dotfiles
stow .
```
