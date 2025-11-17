-- add additional plugins not included in LazyVim or LazyExtras
-- and change default plugin configurations here

return {
  -- show hidden files by default in file expolorer and search
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        hidden = true,
        sources = {
          files = {
            hidden = true,
          },
        },
      },
    },
  },
}
