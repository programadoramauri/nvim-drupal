return {
  "nvim-treesitter/nvim-treesitter",
  event = {"BufReadPre", "BufNewFile"},
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      highlight = {
        enable = true,
        additional_vim_regex_highlight = false
      },
      indent = {enable = true},
      autotag = {
        enable = true,
      },
      ensure_installed = {
        "lua",
        "html",
      }
    })
  end,
}
