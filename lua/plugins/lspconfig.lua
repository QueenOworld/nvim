return {
    {
        'neovim/nvim-lspconfig',
        config = function()
            local capabilities = vim.lsp.protocol.make_client_capabilities()
            capabilities.textDocument.completion.completionItem.snippetSupport = true

            local lsp = require('lspconfig')
            lsp.zls.setup {}
            lsp.lua_ls.setup {}
            lsp.csharp_ls.setup {}
            lsp.omnisharp.setup {}
            lsp.pyright.setup {}
            lsp.html.setup {
                capabilities = capabilities,
            }
            lsp.cssls.setup {
                capabilities = capabilities,
            }
            lsp.bashls.setup {}
            lsp.cmake.setup {}
            lsp.neocmake.setup {}
            lsp.cssls.setup {}
            lsp.cssmodules_ls.setup {}
            lsp.css_variables.setup {}
            lsp.docker_compose_language_service.setup {}
            lsp.astro.setup {}
            lsp.lua_ls.setup {}
            lsp.clangd.setup {
                on_attach = function(_, buf)
                    local group = vim.api.nvim_create_augroup("clangd_no_inlay_hints_in_insert", { clear = true })

                    vim.keymap.set("n", "<leader>lh", function()
                        if require("clangd_extensions.inlay_hints").toggle_inlay_hints() then
                            vim.api.nvim_create_autocmd("InsertEnter", {
                                group = group,
                                buffer = buf,
                                callback = require("clangd_extensions.inlay_hints").disable_inlay_hints
                            })
                            vim.api.nvim_create_autocmd({ "TextChanged", "InsertLeave" }, {
                                group = group,
                                buffer = buf,
                                callback = require("clangd_extensions.inlay_hints").set_inlay_hints
                            })
                        else
                            vim.api.nvim_clear_autocmds({ group = group, buffer = buf })
                        end
                    end, { buffer = buf, desc = "[l]sp [h]ints toggle" })
                end,
            }
            lsp.glslls.setup {}
            lsp.asm_lsp.setup {}
            lsp.dockerls.setup {}
            lsp.glsl_analyzer.setup {}
            lsp.jsonls.setup {}
            lsp.ts_ls.setup {}
            lsp.yamlls.setup {}
            lsp.arduino_language_server.setup {}
            lsp.biome.setup {}
        end
    }
}
