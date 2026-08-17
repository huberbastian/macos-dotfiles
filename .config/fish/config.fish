if status is-interactive
    set -U fish_greeting

    if test -d /opt/homebrew
        /opt/homebrew/bin/brew shellenv | source
    end

    fish_config theme choose "Catppuccin Mocha"

    set -gx EDITOR nvim
    set -gx JAVA_HOME /opt/homebrew/opt/openjdk
    set -gx PNPM_HOME "$HOME/Library/pnpm"

    fish_add_path "$HOME/bin"
    fish_add_path "$HOMO/.local/bin"
    fish_add_path "$JAVA_HOME/bin"
    fish_add_path "$PNPM_HOME"
    fish_add_path /Users/basti/go/bin
    fish_add_path "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

    alias vi="nvim"
    alias svi="sudo nvim"
    alias ls="eza --icons=always"
    alias la="eza -la --icons=always"

    fnm env --use-on-cd --shell fish | source

    set -gx STARSHIP_CONFIG "$HOME/.config/starship/starship.toml"
    starship init fish | source
end
