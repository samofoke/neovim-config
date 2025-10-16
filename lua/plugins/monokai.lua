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
        filter = "spectrum",
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
  },
}
