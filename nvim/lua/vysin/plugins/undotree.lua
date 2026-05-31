-- lua/plugins/undotree.lua
return {
    "mbbill/undotree",
    vim.keymap.set("n", "<leader>U", vim.cmd.UndotreeToggle),
    init = function()
        vim.g.undotree_WindowLayout = 2       -- Split vertically
        vim.g.undotree_ShortIndicators = 1    -- Shorten status indicators
        vim.g.undotree_SetFocusWhenToggle = 1 -- Focus undotree window on toggle
    end
}

