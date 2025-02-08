-- File: lua/plugins/indent-blankline.lua
return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl", -- tells lazy.nvim to use the new entry point for version 3
    opts = {
      indent = {
        -- Remove 'enabled'; use 'char' to set the indent character.
        char = "", -- set this to "" if you want to disable the indent guides entirely.
      },
      exclude = {
        filetypes = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy" },
        buftypes = { "terminal" },
      },
      scope = {
        enabled = false, -- this is still valid for disabling scope highlighting
      },
    },
    config = function(_, opts)
      require("ibl").setup(opts)
    end,
  },
}
