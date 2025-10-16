-- 4-Color Dark Theme for Neovim
-- Place this file at ~/.config/nvim/colors/fourcolor.vim or as a lua colorscheme

local colors = {
	bg = "#1a1a1a", -- Dark background
	fg = "#ffffff", -- White foreground
	green = "#6fbf61", -- Strings
	purple = "#b88dd9", -- Constants
	yellow = "#ffd966", -- Comments
	lightblue = "#6db3d9", -- Top level definitions
}

-- Set background
vim.cmd("set background=dark")

-- Clear existing highlights
vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end

vim.g.colors_name = "fourcolor"

-- Helper function to set highlights
local function hi(group, fg, bg, attr)
	local cmd = "highlight " .. group
	if fg then
		cmd = cmd .. " guifg=" .. fg
	end
	if bg then
		cmd = cmd .. " guibg=" .. bg
	end
	if attr then
		cmd = cmd .. " gui=" .. attr
	end
	vim.cmd(cmd)
end

-- Basic UI
hi("Normal", colors.fg, colors.bg)
hi("NonText", colors.fg, colors.bg)
hi("LineNr", "#555555", colors.bg)
hi("CursorLineNr", colors.fg, colors.bg, "bold")
hi("CursorLine", nil, "#2a2a2a")
hi("CursorColumn", nil, "#2a2a2a")
hi("VertSplit", "#444444", colors.bg)
hi("StatusLine", colors.fg, "#2a2a2a")
hi("StatusLineNC", "#888888", "#1a1a1a")
hi("Pmenu", colors.fg, "#2a2a2a")
hi("PmenuSel", colors.bg, colors.lightblue)

-- Syntax highlighting
hi("Comment", colors.yellow)
hi("String", colors.green)
hi("Character", colors.green)
hi("Number", colors.purple)
hi("Boolean", colors.purple)
hi("Float", colors.purple)
hi("Constant", colors.purple)

-- Keywords and definitions
hi("Function", colors.lightblue)
hi("Identifier", colors.lightblue)
hi("Type", colors.lightblue, nil, "bold")
hi("TypeDef", colors.lightblue, nil, "bold")
hi("Keyword", colors.fg)
hi("Statement", colors.fg)

-- Other elements
hi("Operator", colors.fg)
hi("Delimiter", colors.fg)
hi("Conditional", colors.fg)
hi("Repeat", colors.fg)
hi("Label", colors.lightblue)

-- Search and selection
hi("Search", colors.bg, colors.yellow)
hi("IncSearch", colors.bg, colors.yellow, "bold")
hi("Visual", nil, "#444444")

-- Diagnostics
hi("DiagnosticError", "#ff6b6b", colors.bg)
hi("DiagnosticWarn", colors.yellow, colors.bg)
hi("DiagnosticInfo", colors.lightblue, colors.bg)
hi("DiagnosticHint", colors.green, colors.bg)
