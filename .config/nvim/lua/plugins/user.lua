return {
  { "brenoprata10/nvim-highlight-colors", opts = {
    render = "background",
  } },
  {
    "nvim-mini/mini.comment",
    opts = {
      mappings = {
        comment = "<leader>/",
        comment_line = "<leader>/",
        comment_visual = "<leader>/",
        textobject = "<leader>/",
      },
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        hidden = true,
        sources = {
          files = {
            hidden = true,
            ignored = true,
          },
        },
      },
    },
  },
}
