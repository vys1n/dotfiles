-- CARBONFOX
-- return {
--     {
--         "EdenEast/nightfox.nvim",
--         lazy = false,
--         priority = 1000,
--         config = function()
--             require("nightfox").setup({
--                 options = {
--                     transparent = true,
--                 },
--             })
--             vim.cmd("colorscheme carbonfox")
--         end,
--     },
-- }

-- MOONFLY
return {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000,
    config = function()
        vim.g.moonflyTransparent = true
        vim.g.moonflyCursorColor = true
        vim.g.moonflyItalics = false

        vim.cmd("colorscheme moonfly")

        vim.cmd([[
          highlight Normal        ctermbg=NONE guibg=NONE
          highlight NormalNC      ctermbg=NONE guibg=NONE
          highlight NormalFloat   ctermbg=NONE guibg=NONE
          highlight FloatBorder   ctermbg=NONE guibg=NONE
          highlight Pmenu         ctermbg=NONE guibg=NONE
          highlight SignColumn    ctermbg=NONE guibg=NONE
          highlight VertSplit     ctermbg=NONE guibg=NONE
          highlight LineNr        ctermbg=NONE guibg=NONE
          highlight CursorLineNr  ctermbg=NONE guibg=NONE
        ]])
    end,
}

-- ROSE-PINE
-- return {
-- 	"rose-pine/neovim",
-- 	name = "rose-pine",
-- 	config = function()
-- 		require("rose-pine").setup({
-- 			disable_background = true,
-- 			disable_float_background = true, -- optional
-- 		})
-- 		vim.cmd("colorscheme rose-pine")
-- 	end
-- }
