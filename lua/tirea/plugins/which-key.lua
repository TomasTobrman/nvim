return {
	'folke/which-key.nvim',
	event = 'VeryLazy',
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {
		icons = {
			breadcrumb = '»',
			separator = '➜',
			group = '+',
		},
		popup_mappings = {
			scroll_down = '<c-d>',
			scroll_up = '<c-u>',
		},
		window = {
			border = 'single',
			position = 'bottom',
			margin = { 1, 2, 1, 2 },
			padding = { 1, 2, 1, 2 },
			winblend = 0,
			zindex = 1000,
		},
		layout = {
			height = { min = 4, max = 25 },
			width = { min = 20, max = 50 },
			spacing = 3,
			align = 'center',
		},
		triggers = 'auto',
	},
}
