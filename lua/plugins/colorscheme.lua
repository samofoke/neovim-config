return {
  {
    "loctvl842/monokai-pro.nvim",
    priority = 1000,
    config = function()
      require("monokai-pro").setup({
        transparent_background = true,
        terminal_colors = true,
        background_clear = {
          "falseoat_win",
          "toggleterm",
          "telescope",
          "which-key",
          "renamer",
          "notify",
          -- "nvim-tree",
          "neo-tree",
          "bufferline", -- better used if background of `neo-tree` or `nvim-tree` is cleared
        },
      })
      vim.cmd("colorscheme monokai-pro-spectrum")
    end,
  },
}
