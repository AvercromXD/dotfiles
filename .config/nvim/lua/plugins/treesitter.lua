return {
    "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
    config = function()

        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = {"lua", "python", "c", "vim", "java", "rust", "cpp"},
            highlight = {enable = true},
            indent = { enable = true},
        })
    end
}
