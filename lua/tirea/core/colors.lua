local M = {}

M.oxocarbon = {
	base00 = '#161616',
	base01 = '#262626',
	base02 = '#393939',
	base03 = '#525252',
	base04 = '#DDE1E6',
	base05 = '#F2F4F8',
	base06 = '#FFFFFF',
	base07 = '#08BDBA',
	base08 = '#3DDBD9',
	base09 = '#78A9FF',
	base0A = '#EE5396',
	base0B = '#33B1FF',
	base0C = '#FF7EB6',
	base0D = '#42BE65',
	base0E = '#BE95FF',
	base0F = '#82CFFF',
}

M.lualine = {
	normal = {
		a = { bg = M.oxocarbon.base00, fg = M.oxocarbon.base02, gui = 'bold' },
		b = { bg = M.oxocarbon.base00, fg = M.oxocarbon.base02 },
		c = { bg = M.oxocarbon.base00, fg = M.oxocarbon.base02 },
		x = { bg = M.oxocarbon.base00, fg = M.oxocarbon.base02 },
		y = { bg = M.oxocarbon.base00, fg = M.oxocarbon.base02 },
		z = { bg = M.oxocarbon.base00, fg = M.oxocarbon.base02 },
	},
	insert = {
		a = { bg = M.oxocarbon.base0E, fg = M.oxocarbon.base01, gui = 'bold' },
		b = { bg = M.oxocarbon.base00, fg = M.oxocarbon.base02 },
		c = { bg = M.oxocarbon.base00, fg = M.oxocarbon.base02 },
		x = { bg = M.oxocarbon.base00, fg = M.oxocarbon.base02 },
		y = { bg = M.oxocarbon.base00, fg = M.oxocarbon.base02 },
		z = { bg = M.oxocarbon.base00, fg = M.oxocarbon.base02 },
	},
	visual = {
		a = { bg = M.oxocarbon.base06, fg = M.oxocarbon.base01, gui = 'bold' },
		b = { bg = M.oxocarbon.base00, fg = M.oxocarbon.base02 },
		c = { bg = M.oxocarbon.base00, fg = M.oxocarbon.base02 },
		x = { bg = M.oxocarbon.base00, fg = M.oxocarbon.base02 },
		y = { bg = M.oxocarbon.base00, fg = M.oxocarbon.base02 },
		z = { bg = M.oxocarbon.base00, fg = M.oxocarbon.base02 },
	},
	replace = {
		a = { bg = M.oxocarbon.base0F, fg = M.oxocarbon.base01, gui = 'bold' },
		b = { bg = M.oxocarbon.base00, fg = M.oxocarbon.base02 },
		c = { bg = M.oxocarbon.base00, fg = M.oxocarbon.base02 },
		x = { bg = M.oxocarbon.base00, fg = M.oxocarbon.base02 },
		y = { bg = M.oxocarbon.base00, fg = M.oxocarbon.base02 },
		z = { bg = M.oxocarbon.base00, fg = M.oxocarbon.base02 },
	},
	command = {
		a = { bg = M.oxocarbon.base0B, fg = M.oxocarbon.base01, gui = 'bold' },
		b = { bg = M.oxocarbon.base00, fg = M.oxocarbon.base02 },
		c = { bg = M.oxocarbon.base00, fg = M.oxocarbon.base02 },
		x = { bg = M.oxocarbon.base00, fg = M.oxocarbon.base02 },
		y = { bg = M.oxocarbon.base00, fg = M.oxocarbon.base02 },
		z = { bg = M.oxocarbon.base00, fg = M.oxocarbon.base02 },
	},
	inactive = {
		a = { bg = M.oxocarbon.base00, fg = M.oxocarbon.base02, gui = 'bold' },
		b = { bg = M.oxocarbon.base00, fg = M.oxocarbon.base02 },
		c = { bg = M.oxocarbon.base00, fg = M.oxocarbon.base02 },
		x = { bg = M.oxocarbon.base00, fg = M.oxocarbon.base02 },
		y = { bg = M.oxocarbon.base00, fg = M.oxocarbon.base02 },
		z = { bg = M.oxocarbon.base00, fg = M.oxocarbon.base02 },
	},
}

return M
