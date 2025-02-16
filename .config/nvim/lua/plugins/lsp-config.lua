return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "clangd",
                    "csharp_ls",
                    "ltex",
                    "ts_ls",
                    "rust_analyzer",
                    "pyright",
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.clangd.setup({ capabilities = capabilities })
            lspconfig.csharp_ls.setup({ capabilities = capabilities })
            lspconfig.ltex.setup({ capabilities = capabilities })
            lspconfig.rust_analyzer.setup({
                settings = {
                    ["rust-analyzer"] = {
                        diagnostics = {
                            enable = false,
                        },
                    },
                },
                capabilities = capabilities,
            })
            lspconfig.ts_ls.setup({ capabilities = capabilities })
            lspconfig.pyright.setup({capabilities})
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
            vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
            vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, {})
        end,
    },
}
