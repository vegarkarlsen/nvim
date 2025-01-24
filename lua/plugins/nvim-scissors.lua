if false then
    return {}
end

return {
    -- lazy.nvim
    {
        "chrisgrieser/nvim-scissors",
        dependencies = "nvim-telescope/telescope.nvim",
        opts = {
            snippetDir = "~/.config/nvim/snippets",
        },
        keys = {
            {
                "nv",
                "<localleader>se",
                mode = { "n", "v" },
                function()
                    require("scissors").editSnippets()
                end,
                { desc = "Snippet: Edit" },
            },
            {
                "<localleader>sa",
                function()
                    require("scissors").addNewSnippet()
                end,
                { desc = "Snippet: Add" },
            },
        },
    },
}
