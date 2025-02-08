-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.g.indent_blankline_enabled = false

vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = "none", nocombine = true })
