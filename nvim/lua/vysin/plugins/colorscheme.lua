local colorschemes = require("vysin.colorschemes")

return vim.tbl_map(function(item)
	local spec = {
		item.repo,
		lazy = true,
		priority = 1000,
	}

	if item.name then
		spec.name = item.name
	end

	if item.config then
		spec.config = item.config
	end

	return spec
end, colorschemes.items)
