
return {
    "numToStr/Navigator.nvim",
    config = function ()
        require("Navigator").setup()
    end,
    keys = {
        { "<c-h>", "<CMD>NavigatorLeft<CR>", desc = "left pane"  },
        { "<c-j>", "<CMD>NavigatorDown<CR>", desc = "lower pane" },
        { "<c-k>", "<CMD>NavigatorUp<CR>", desc = "upper pane" },
        { "<c-l>", "<CMD>NavigatorRight<CR>", desc = "right pane" },
    }
}
