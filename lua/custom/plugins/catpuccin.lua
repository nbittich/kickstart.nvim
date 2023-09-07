return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    -- you can do it like this with a config function
    config = function()
        require("catppuccin").setup({
            flavour = "mocha",
            term_colors = true,
            transparent_background = true,
            no_italic = false,
            no_bold = false,
            styles = {
                comments = {},
                conditionals = {},
                loops = {},
                functions = {},
                keywords = {},
                strings = {},
                variables = {},
                numbers = {},
                booleans = {},
                properties = {},
                types = {},
            },
            highlight_overrides = {
                mocha = function(C)
                    return {
                        --  TabLineSel = { bg = C.pink },
                        NotifyBackground = { bg = C.pink },
                        CmpBorder = { fg = C.surface2 },
                        Pmenu = { bg = C.none },
                        TelescopeBorder = { link = "FloatBorder" },
                    }
                end,
            },
            color_overrides = {
                mocha = {
                    base = "#000000",
                    mantle = "#000000",
                    crust = "#000000",
                },
            },



        })
        vim.cmd.colorscheme 'catppuccin'
    end,

}
