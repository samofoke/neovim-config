return {
  {
    "nvim-treesitter/nvim-treesitter",
    tag = "v0.9.1",
    opts = {
      ensure_installed = {
        "javascript",
        "typescript",
        "css",
        "gitignore",
        "graphql",
        "http",
        "json",
        "scss",
        "vim",
        "lua",
        "go", -- Go support
        "c", -- C support
        "cpp", -- C++ support
        "rust", -- Rust support
        "python", -- Python support
        "elm", -- Elm support
      },
      query_linter = {
        enable = true,
        use_virtual_text = true,
        lint_events = { "BufWrite", "CursorHold" },
      },
    },
  },
}
