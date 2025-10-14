return {
  {
    "loctvl842/monokai-pro.nvim",
    lazy = false,
    priority = 1000,
    opts = function()
      local override = function(c)
        local background = c.editor.background

        return {
          NormalFloat = { bg = background },
          FloatBorder = { fg = c.base.white, bg = background },
          FloatTitle = { fg = c.base.white, bg = background },
        }
      end

      return {
        transparent_background = true,
        terminal_colors = true,
        devicons = true,
        filter = "spectrum", -- "classic" | "octagon" | "pro" | "machine" | "ristretto" | "spectrum"
        background_clear = {
          "float_win",
          "toggleterm",
          "telescope",
          "which-key",
          "notify",
          "renamer",
          "nvim-tree",
          "neo-tree",
          "bufferline",
        },
        override = override,
      }
    end,
    config = function(_, opts)
      require("monokai-pro").setup(opts)

      local scheme = "monokai-pro"
      if opts.filter and opts.filter ~= "classic" then
        scheme = string.format("monokai-pro-%s", opts.filter)
      end

      vim.cmd.colorscheme(scheme)
    end,
  },
}
