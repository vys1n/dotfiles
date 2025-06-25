return {
    'stevearc/oil.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        view_options = {
            show_hidden = true,
        },
        float = {
            padding = 2,
            max_width = 100,
            max_height = 40,
            border = "rounded",
            win_options = {
                winblend = 0,
            },
        },
    },
    config = function(_, opts)
        require("nvim-web-devicons").setup()  -- enable icons
        require("oil").setup(opts)
        vim.keymap.set({ "n", "x" }, "<leader>e", function()
            require("oil").open_float()
        end, { silent = true, desc = "Open Oil" })
    end,
}

