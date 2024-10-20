if true then return {}

end

return {

    { "echasnovski/mini.pairs", enabled = false },
    {
        "L3MON4D3/LuaSnip",
        --   lazy = false,
        config = function()
            require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/plugins/luaSnippets/" })
            require("luasnip").config.setup({
                enable_autosnippets = true,
                update_events = "TextChanged,TextChangedI",
            })
        end,
    },
}

