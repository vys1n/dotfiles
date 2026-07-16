local M = {}

M.items = {
    {
        repo = "oskarnurm/koda.nvim",
        schemes = { "koda", "koda-moss", "koda-dark" },
        config = function()
            require("koda").setup({ transparent = true })
            vim.cmd("colorscheme koda-moss")
        end,
    },
    {
        repo = "bluz71/vim-moonfly-colors",
        schemes = { "moonfly" },
        config = function()
            vim.g.moonflyTransparent = true
            vim.g.moonflyCursorColor = true
            vim.g.moonflyItalics = false

            vim.cmd("colorscheme moonfly")
        end,
    },
    {
        repo = "rose-pine/neovim",
        name = "rose-pine",
        schemes = { "rose-pine", "rose-pine-main" },
        config = function()
            require("rose-pine").setup({
                disable_background = true,
                disable_float_background = true,
            })
            vim.cmd("colorscheme rose-pine")
        end,
    },
}

function M.names()
    local names = {}

    for _, item in ipairs(M.items) do
        vim.list_extend(names, item.schemes)
    end

    return names
end

return M
