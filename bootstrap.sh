#!/usr/bin/env bash

command_exists() {
  command -v "$1" >/dev/null 2>&1
}

confirm() {
  local prompt="$1"
  local default="${2:-N}"

  if [[ "$default" =~ [Yy] ]]; then
    prompt="$prompt [Y/n]: "
  else
    prompt="$prompt [y/N]: "
  fi

  read -r -p "$prompt" response

  if [[ -z "$response" ]]; then
    response="$default"
  fi

  case "$response" in
  [yY] | [yY][eE][sS]) return 0 ;;
  *) return 1 ;;
  esac
}

# See http://apple.stackexchange.com/questions/107307/how-can-i-install-the-command-line-tools-completely-from-the-command-line
if ! xcode-select -p >/dev/null 2>&1; then
  if confirm "Xcode Command Line Tools are required, would you like to install them now?" "Y"; then
    echo "Installing Xcode Command Line Tools..."
    touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress
    PROD=$(softwareupdate -l |
      grep "\*.*Command Line" |
      tail -n 1 | sed 's/^[^C]* //')
    echo "Prod: ${PROD}"
    softwareupdate -i "$PROD" --verbose
  else
    echo "Please install Xcode Command Line Tools and run this script again."
    exit 0
  fi
else
  echo "Xcode Command Line Tools already installed ✅ continuing..."
fi

DOTFILES_DIR="$HOME/dotfiles"
BREWFILE="$DOTFILES_DIR/Brewfile"

if [ ! -d "$DOTFILES_DIR" ]; then
  git clone https://github.com/huberbastian/macos-dotfiles.git $DOTFILES_DIR
else
  echo "Dotfiles directory already exists, exiting setup."
  exit 1
fi

if ! command_exists brew; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew already installed ✅ continuing..."
fi

if [ -f "$BREWFILE" ]; then
  echo "Installing packages from Brewfile..."
  brew bundle install --file="$BREWFILE"
else
  echo "Brewfile not found at $BREWFILE"
  exit 1
fi

if confirm "Would you like to symlink the config files (will fail if any already exist)?" "Y"; then
  if stow -d "$DOTFILES_DIR" -t "$HOME"; then
    echo "Dotfiles symlinked successfully!"
  else
    echo "❌ Stow encountered an error."
    echo "Some files likely already exist in $HOME and are blocking symlinks."
    echo "Please back them up or remove them, then run the script again."
    exit 1
  fi
else
  echo "Back up or remove existing config files."
  echo "Rerun this script or run GNU Stow yourself."
fi

echo "✅ Bootstrap complete!"
