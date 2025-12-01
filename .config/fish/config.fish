if status is-interactive
    set -U fish_greeting

    fish_config theme choose "Catppuccin Mocha"

    set -gx EDITOR nvim
    set -gx JAVA_HOME /opt/homebrew/opt/openjdk
    set -gx PNPM_HOME "$HOME/Library/pnpm"

    fish_add_path "$HOME/bin"
    fish_add_path "$HOMO/.local/bin"
    fish_add_path "$JAVA_HOME/bin"
    fish_add_path "$PNPM_HOME"

    alias vi="nvim"
    alias svi="sudo nvim"
    alias ls="eza --icons=always"
    alias la="eza -la --icons=always"

    fnm env --use-on-cd --shell fish | source

    set -gx STARSHIP_CONFIG "$HOME/.config/starship/starship.toml"
    starship init fish | source
end
