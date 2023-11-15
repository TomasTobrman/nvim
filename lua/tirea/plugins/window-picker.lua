return {
	'ten3roberts/window-picker.nvim',
	event = { 'BufReadPre', 'BufNewFile' },
	config = function()
		require('window-picker').setup({
			keys = 'alskdjfhgwoeiruty',
			swap_shift = true,
			exclude = { qf = true, Oil = true, Telescope = true },
			flash_duration = 300,
		})

		vim.keymap.set('n', '<leader>ww', '<cmd>WindowPick<cr>', { desc = 'Pick a window' })
		vim.keymap.set('n', '<leader>ws', '<cmd>WindowSwap<cr>', { desc = 'Swap windows' })
		vim.keymap.set('n', '<leader>wq', '<cmd>WindowZap<cr>', { desc = 'Close a window' })
	end,
}
