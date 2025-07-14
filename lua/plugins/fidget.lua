return {
    "j-hui/fidget.nvim",
    after = "neopywal",
    config = function()
        if (vim.g.colors_name or ""):find("neopywal") then
            local has_fidget, fidget = pcall(require, "fidget")
            if not has_fidget then
                return
            end

            local has_neopywal, neopywal_fidget = pcall(require, "neopywal.theme.plugins.fidget")
            if not has_neopywal then
                return
            end
            neopywal_fidget.setup()
        end
        require("fidget").setup({
            progress = {
                display = {
                    done_style = "FidgetDone",
                    progress_style = "FigdetProgress",
                    group_style = "FidgetGroup",
                    icon_style = "FidgetIcon",
                },
            },
            notification = {
                view = {
                    group_separator_hl = "FidgetSeparator",
                },
                window = {
                    normal_hl = "FidgetNormal",

                    -- You can use this option to adjust the background color opacity for the notification window.
                    -- But it's recommended set this to "0" if you don't plan on changing any of the custom highlight groups.
                    winblend = 0,
                },
            },
            integration = {
                ["nvim-tree"] = {
                    enable = true,     -- Integrate with nvim-tree/nvim-tree.lua (if installed)
                },
            },
        })
    end
}
