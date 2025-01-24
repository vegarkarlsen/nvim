--------------------------------------------------------------------------------------------------
--
-- ------- Set up latex
-- NOTE: Make sure to enable [ lazy.extras.lang.tex ] and [ lazy.extras.editor.luasnip ]
-- to use this plugin
--
--------------------------------------------------------------------------------------------------

if false then
    return {}
end

return {
    {   -- Add luassnip to blink snippet handeling
        "saghen/blink.cmp",
        dependencies = { "L3MON4D3/LuaSnip", version = "v2.*" },
        opts = {
            snippets = { preset = "luasnip" },
        },
    },
    {   -- Add latex snippets
        "iurimateus/luasnip-latex-snippets.nvim",
        require = { "L3MON4D3/LuaSnip" },
        config = function()
            require("luasnip-latex-snippets").setup({
                use_tresitter = true,
                allow_on_markdown = true,
            })
            require("luasnip").config.setup({ enable_autosnippets = true })

            -- Modify existing snippets using higher priority and util function from luasnip-latex-snippets
            local ls = require("luasnip")
            local s = ls.snippet
            local i = ls.insert_node
            local fmta = require("luasnip.extras.fmt").fmta
            local utils = require("luasnip-latex-snippets.util.utils")
            local not_math = utils.with_opts(utils.not_math, false) -- when using treesitter, change false to true

            ls.add_snippets("tex", {
                s(
                    { trig = "mk", snippetType = "autosnippet", priority = 1 },
                    fmta("$<>$<>", { i(1), i(2) }),
                    { condition = not_math }
                ),
                s(
                    { trig = "dm", snippetType = "autosnippet", priority = 1 },
                    fmta("$$\n<>\n$$<>", { i(1), i(2) }),
                    { condition = not_math }
                ),
            })
        end,
    },
}
