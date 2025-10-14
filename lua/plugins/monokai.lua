return {
  {
    "loctvl842/monokai-pro.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("monokai-pro").setup({
        transparent_background = false,
        terminal_colors = true,
        devicons = true,
        filter = "spectrum", -- "classic" | "octagon" | "pro" | "machine" | "ristretto" | "spectrum"
        background_clear = {
          "telescope",
          "which-key",
          "nvim-tree",
          "neo-tree",
          "bufferline",
        },
        override = function(c)
          return {
            NormalFloat = { bg = c.editor.background },
            FloatBorder = { fg = c.base.white, bg = c.editor.background },
          }
        end,
      })

      -- apply colorscheme after setup
      vim.cmd([[colorscheme monokai-pro]])
    end,
  },
}
