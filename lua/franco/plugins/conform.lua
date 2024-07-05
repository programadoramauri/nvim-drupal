return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>gf",
			function()
				require("conform").format({ async = true, lsp_format = "fallback" })
			end,
			mode = "",
			desc = "Format buffer",
		},
	},
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			php = { "php_cs_fixer" },
		},
		format_on_save = { timeout_ms = 500, lsp_format = "fallback" },
		formatters = {
			php_cs_fixer = {
				prepend_args = { "--standard", "Drupal" },
			},
		},
	},
}
