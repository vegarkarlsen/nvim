-- Integrate pane navigation with tmux
return {
    "christoomey/vim-tmux-navigator",
    cmd = {
        "TmuxNavigateLeft",
        "TmuxNavigateDown",
        "TmuxNavigateUp",
        "TmuxNavigateRight",
        "TmuxNavigatePrevious",
    },
    keys = {
        { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>", desc = "left pane"  },
        { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>", desc = "lower pane" },
        { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>", desc = "upper pane" },
        { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>", desc = "right pane" },
        -- { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>", desc = "" },
    },
}
