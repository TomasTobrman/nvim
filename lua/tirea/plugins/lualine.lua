return {
	'nvim-lualine/lualine.nvim',
	event = 'VimEnter',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		local lualine = require('lualine')
		local lazy_status = require('lazy.status')
		local theme = require('tirea.core.colors').lualine

		lualine.setup({
			options = {
				theme = theme,
				icons_enabled = true,
				section_separators = { left = ' ', right = ' ' },
				component_separators = { left = ' ', right = ' ' },
				globalstatus = true,
				disabled_filetypes = {
					'alpha',
					'oil',
					'dapui_watches',
					'dapui_breakpoints',
					'dapui_scopes',
					'dapui_console',
					'dapui_stacks',
					'dap-repl',
				},
				ignore_focus = {
					'alpha',
					'oil',
					'dapui_watches',
					'dapui_breakpoints',
					'dapui_scopes',
					'dapui_console',
					'dapui_stacks',
					'dap-repl',
				},
				refresh = {
					statusline = 500,
					tabline = 500,
					winbar = 500,
				},
			},
			sections = {
				lualine_a = { 'mode' },
				lualine_b = {
					'branch',
					'diff',
					'diagnostics',
				},
				lualine_c = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
					},
				},
				lualine_x = { 'filetype' },
				lualine_y = { 'progress' },
				lualine_z = { 'location' },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {},
			},
			winbar = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {
					{
						'filename',
						symbols = {
							modified = '●',
							readonly = '',
							unnamed = '',
							newfile = '',
						},
					},
					{
						'navic',
						color_correction = nil,
						navic_opts = nil,
					},
				},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {},
			},
			inactive_winbar = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {
					{
						'filename',
						symbols = {
							modified = '●',
							readonly = '',
							unnamed = '',
							newfile = '',
						},
					},
					{
						'navic',
						color_correction = nil,
						navic_opts = nil,
					},
				},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			extensions = {
				'lazy',
				'mason',
			},
		})
	end,
}
