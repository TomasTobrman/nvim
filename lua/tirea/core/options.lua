local options = {
	opt = {
		clipboard = 'unnamedplus',
		cmdheight = 0,
		cursorline = true,
		expandtab = false,
		fileencoding = 'utf-8',
		fillchars = { eob = ' ' },
		history = 100,
		mouse = 'a',
		number = true,
		scrolloff = 2,
		sidescrolloff = 2,
		signcolumn = 'yes',
		shiftwidth = 4,
		smartindent = true,
		softtabstop = 4,
		splitbelow = true,
		splitright = true,
		tabstop = 4,
		termguicolors = true,
		undofile = true,
		wrap = false,
		writebackup = false,
	},
	g = {
		mapleader = ' ',
	},
}

for scope, table in pairs(options) do
	for setting, value in pairs(table) do
		vim[scope][setting] = value
	end
end
