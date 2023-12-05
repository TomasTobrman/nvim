return {
	'mfussenegger/nvim-dap',
	dependencies = { 'rcarriga/nvim-dap-ui' },
	event = { 'BufReadPre', 'BufNewFile' },
	config = function()
		local dap = require('dap')
		local ui = require('dapui')
		local dap_widgets = require('dap.ui.widgets')

		vim.fn.sign_define('DapBreakpoint', { text = '' })

		ui.setup({
			icons = { expanded = '▾', collapsed = '▸' },
			mappings = {
				open = 'o',
				remove = 'd',
				edit = 'e',
				repl = 'r',
				toggle = 't',
			},
			expand_lines = vim.fn.has('nvim-0.7'),
			layouts = {
				{
					elements = {
						'scopes',
						'console',
					},
					size = 0.3,
					position = 'right',
				},
				{
					elements = {
						'repl',
						'breakpoints',
					},
					size = 0.3,
					position = 'bottom',
				},
			},
			floating = {
				max_height = nil,
				max_width = nil,
				border = 'single',
				mappings = {
					close = { 'q', '<Esc>' },
				},
			},
			windows = { indent = 1 },
			render = {
				max_type_length = nil,
			},
		})

		local opts = { noremap = true, silent = true }

		opts.desc = 'Debug Start'
		vim.keymap.set('n', '<leader>ds', function()
			dap.continue()
			ui.toggle({})
			vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C-w>=', false, true, true), 'n', false)
		end, opts)

		opts.desc = 'Debug Continue'
		vim.keymap.set('n', '<leader>dc', dap.continue, opts)

		opts.desc = 'Debug Step Over'
		vim.keymap.set('n', '<leader>dv', dap.step_over, opts)

		opts.desc = 'Debug Step Into'
		vim.keymap.set('n', '<leader>di', dap.step_into, opts)

		opts.desc = 'Debug Step Out'
		vim.keymap.set('n', '<leader>do', dap.step_out, opts)

		opts.desc = 'Debug Hover'
		vim.keymap.set('n', '<leader>dl', dap_widgets.hover, opts)

		opts.desc = 'Debug Toggle Breakpoint'
		vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint, opts)

		opts.desc = 'Debug Clear Breakpoints'
		vim.keymap.set('n', '<leader>dC', function()
			dap.clear_breakpoints()
			require('notify')('Breakpoints cleared', 'warn')
		end, opts)

		opts.desc = 'Debug End'
		vim.keymap.set('n', '<leader>de', function()
			dap.clear_breakpoints()
			ui.toggle({})
			dap.terminate()
			vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C-w>=', false, true, true), 'n', false)
			require('notify')('Debugger session ended', 'warn')
		end, opts)
	end,
}
