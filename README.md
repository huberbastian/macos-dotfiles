# 💻 MacOS Config Files

My MacOS config files

## Usage

1. If not already installed, install [Homebrew](https://brew.sh/)
2. Install GNU Stow with:

```bash
brew install stow
```

1. Clone the repository and run stow to create symlinks

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
