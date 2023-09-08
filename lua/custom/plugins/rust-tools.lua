return {
    "simrat39/rust-tools.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "mfussenegger/nvim-dap"
    },
    config = function()
        local rt = require("rust-tools")

        rt.setup({
            tools = {
                inlay_hints = {
                    auto = false,
                    show_parameter_hints = false,
                },
            },
            server = {
                on_attach = function(client, bufnr)
                    if client.name == "rust_analyzer" then
                        -- Hover actions
                        vim.keymap.set("n", "K", rt.hover_actions.hover_actions, { buffer = bufnr })
                        -- Code action groups
                        -- vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
                    end
                end,
            },
        })
    end
}
