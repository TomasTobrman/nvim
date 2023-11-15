return {
	'akinsho/toggleterm.nvim',
	keys = { { [[<c-\>]], '<cmd>Toggleterm<cr>', desc = 'Open Toggleterm' } },
	opts = {
		open_mapping = [[<c-\>]],
		direction = 'vertical',
		float_opts = { border = 'single' },
		size = function(term)
			if term.direction == "horizontal" then
				return 15
			elseif term.direction == "vertical" then
				return vim.o.columns * 0.4
			end
		end,
	},
}
