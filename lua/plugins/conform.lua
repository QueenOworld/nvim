return { -- Autoformat
    "stevearc/conform.nvim",
    opts = {
        notify_on_error = false,
        format_on_save = {
            timeout_ms = 500,
            lsp_fallback = "fallback",
        },
        formatters_by_ft = {
            lua = { "stylua" },
            c_sharp = { { "csharpier", "clang_format" } },
            cpp = { "clang_format" },
            c = { "clang_format" },
            h = { "clang_format" },
            hpp = { "clang_format" },
            sh = { "shfmt" },

            -- Conform can also run multiple formatters sequentially
            -- python = { "isort", "black" },
            --
            -- You can use a sub-list to tell conform to run *until* a formatter
            -- is found.
            json = { "biome" },
            javascript = { { "prettierd", "prettier" } },
            css = { { "prettierd", "prettier" } },
            html = { { "prettierd", "prettier" } }
        },
        formatters = {}
    },
    config = function()
        vim.api.nvim_create_user_command("Format", function(args)
            local range = nil
            if args.count ~= -1 then
                local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
                range = {
                    start = { args.line1, 0 },
                    ["end"] = { args.line2, end_line:len() },
                }
            end
            require("conform").format({ async = true, lsp_fallback = true, range = range })
        end, { range = true })
    end
}
