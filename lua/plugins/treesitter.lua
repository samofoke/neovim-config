return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "javascript",
        "typescript",
        "tsx",
        "css",
        "gitignore",
        "graphql",
        "http",
        "json",
        "scss",
        "vim",
        "lua",
        "go",
        "c",
        "cpp",
        "rust",
        "python",
        "elm",
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      query_linter = {
        enable = true,
        use_virtual_text = true,
        lint_events = { "BufWrite", "CursorHold" },
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
}
