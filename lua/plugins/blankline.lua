-- File: lua/plugins/indent-blankline.lua
return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      indent = {
        char = "",
      },
      exclude = {
        filetypes = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy" },
        buftypes = { "terminal" },
      },
      scope = {
        enabled = false,
      },
    },
    config = function(_, opts)
      require("ibl").setup(opts)
    end,
  },
}
