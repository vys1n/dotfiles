-- VAGUE COLORSCHEME
return {
    "vague2k/vague.nvim",
    config = function()
        require("vague").setup({ transparent = true })
        vim.cmd("colorscheme vague")
        vim.cmd(":hi statusline guibg=NONE")
    end
}

-- GITHUB DARK
-- return {
--     'projekt0n/github-nvim-theme',
--     name = 'github-theme',
--     lazy = false, -- make sure we load this during startup if it is your main colorscheme
--     priority = 1000, -- make sure to load this before all the other start plugins
--     config = function()
--     require('github-theme').setup({
--
--     })
--     vim.cmd('colorscheme github_dark_tritanopia')
--     end,
-- }

-- return {
--     {
--         "EdenEast/nightfox.nvim",
--         lazy = false,
--         priority = 1000,
--         config = function()
--             vim.cmd("colorscheme carbonfox")
--         end,
--     },
-- }

-- return {
--   "navarasu/onedark.nvim",
--   priority = 1000, -- make sure to load this before all the other start plugins
--   config = function()
--     require('onedark').setup {
--       style = 'warmer'
--     }
--     -- Enable theme
--     require('onedark').load()
--   end
-- }
