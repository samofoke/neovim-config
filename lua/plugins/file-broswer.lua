return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8", -- or branch = "0.1.x"
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = "Telescope", -- loads Telescope only when a Telescope command is used
    config = function()
      require("telescope").setup({
        defaults = {
          -- add your preferred defaults here
          path_display = { "smart" },
        },
      })
    end,
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    keys = {
      {
        "<leader>sB",
        "<cmd>Telescope file_browser path=%:p:h<CR>",
        desc = "Browse Files",
      },
    },
    config = function()
      require("telescope").load_extension("file_browser")
    end,
  },
}
