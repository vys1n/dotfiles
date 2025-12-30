-- VAGUE COLORSCHEME
-- return {
--     "vague2k/vague.nvim",
--     config = function()
--         require("vague").setup({ transparent = true })
--         vim.cmd("colorscheme vague")
--         vim.cmd(":hi statusline guibg=NONE")
--     end
-- }

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

-- CYBERDREAM
-- return {
--     "scottmckendry/cyberdream.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--         vim.cmd("colorscheme cyberdream")
--         vim.api.nvim_set_hl(0, "Normal", { bg = "#101010" })
--         vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#101010" })
--         vim.api.nvim_set_hl(0, "NormalNC", { bg = "#101010" })
--     end,
-- }

-- PAPERCOLOR
-- return {
--     "NLKNguyen/papercolor-theme",
--     config = function()
--         vim.cmd("colorscheme PaperColor")
--     end,
-- }

-- BAMBOO
-- return {
--   'ribru17/bamboo.nvim',
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require('bamboo').setup {
--       -- optional configuration here
--     }
--     require('bamboo').load()
--         vim.api.nvim_set_hl(0, "Normal", { bg = "#101010" })
--         vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#101010" })
--         vim.api.nvim_set_hl(0, "NormalNC", { bg = "#101010" })
--   end,
-- }

-- BLULOCO
-- return {
--     "uloco/bluloco.nvim",
--     lazy = false,
--     priority = 1000,
--     dependencies = { "rktjmp/lush.nvim" },
--     config = function()
--         require("bluloco").setup({
--             style = "dark", -- "auto" | "dark" | "light"
--             transparent = false,
--             italics = false,
--             terminal = vim.fn.has("gui_running") == 1, -- bluoco colors are enabled in terminal vim
--         })
--
--         -- Set the colorscheme
--         vim.cmd.colorscheme("bluloco")
--
--         -- Override background colors
--         vim.api.nvim_set_hl(0, "Normal", { bg = "#101010" })
--         vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#101010" })
--         vim.api.nvim_set_hl(0, "NormalNC", { bg = "#101010" })
--     end,
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
