return {
	"nvimtools/none-ls.nvim",
    dependencies = {
      "nvimtools/none-ls-extras.nvim",
    },
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
                require("none-ls.code_actions.eslint"),
                require("none-ls.diagnostics.cpplint"),
				null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier,
                require("none-ls.diagnostics.ruff"),
                require("none-ls.formatting.ruff"),
			},
		})
	end,
}
