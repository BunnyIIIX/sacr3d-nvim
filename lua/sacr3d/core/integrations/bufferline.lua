local util = require("sacr3d.utils.util")

local M = {}

function M.get(cpt)
	return {
		BufferLineFill = { bg = util.brighten(cpt.bg, 0.04) },
		BufferLineBackground = { fg = cpt.gray, bg = cpt.black },
		BufferLineBufferVisible = { fg = cpt.gray, bg = cpt.black },
		BufferLineBufferSelected = { fg = cpt.fg, bg = cpt.bg },
		BufferLineTab = { fg = cpt.gray, bg = cpt.bg },
		BufferLineTabSelected = { fg = cpt.red, bg = cpt.blue },
		BufferLineTabClose = { fg = cpt.red, bg = cpt.black },
		BufferLineIndicatorSelected = { fg = cpt.bg, bg = cpt.bg },
		-- separators
		BufferLineSeparator = { fg = cpt.black, bg = cpt.black },
		BufferLineSeparatorVisible = { fg = cpt.black, bg = cpt.black },
		BufferLineSeparatorSelected = { fg = cpt.black, bg = cpt.black },
		-- close buttons
		BufferLineCloseButton = { fg = cpt.gray, bg = cpt.black },
		BufferLineCloseButtonVisible = { fg = cpt.gray, bg = cpt.black },
		BufferLineCloseButtonSelected = { fg = cpt.red, bg = cpt.bg },
	}
end

return M
