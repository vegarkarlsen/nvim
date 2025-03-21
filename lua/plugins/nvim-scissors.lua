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
                "<localleader>se",
                mode = { "n", "v" },
                function()
                    require("scissors").editSnippet()
                end,
                { desc = "Snippet: Edit" },
            },
            {
                "<localleader>sa",
                mode = { "n", "v" },
                function()
                    require("scissors").addNewSnippet()
                end,
                { desc = "Snippet: Add" },
            },
        },
    },
}
