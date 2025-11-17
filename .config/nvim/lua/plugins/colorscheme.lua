return {
  -- add a colorscheme here
  -- tokyonight and catppuccin are installed by default

  -- { "ellisonleao/gruvbox.nvim" },

  -- set colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },

  {
    "catppuccin/nvim",
    opts = {
      transparent_background = true,
      float = {
        transparent = true,
      },
    },
  },
}
