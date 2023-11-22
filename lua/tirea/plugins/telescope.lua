return {
	'nvim-telescope/telescope.nvim',
	branch = '0.1.x',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-tree/nvim-web-devicons',
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	},
	keys = { { '<leader>f', '', mode = 'n', desc = '[F]ind' } },
	cmd = 'Telescope',
	config = function()
		local telescope = require('telescope')
		local actions = require('telescope.actions')

		telescope.setup({
			defaults = {
				file_ignore_patterns = {
					'build',
					'vendor',
					'node_modules',
				},
				mappings = {
					i = {
						['<c-k>'] = actions.move_selection_previous,
						['<c-j>'] = actions.move_selection_next,
						['<c-q>'] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
			},
		})

		telescope.load_extension('fzf')

		vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = '[F]ind [F]iles' })
		vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = '[F]ind [B]uffer' })
		vim.keymap.set('n', '<leader>fr', '<cmd>Telescope oldfiles<cr>', { desc = '[F]ind [R]ecent' })
		vim.keymap.set('n', '<leader>fs', '<cmd>Telescope live_grep<cr>', { desc = '[F]ind [S]tring' })
		vim.keymap.set('n', '<leader>fc', '<cmd>Telescope grep_string<cr>', { desc = '[F]ind [C]urrent' })
	end,
}
