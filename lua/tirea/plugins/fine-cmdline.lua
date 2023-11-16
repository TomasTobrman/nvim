return {
	'VonHeikemen/fine-cmdline.nvim',
	dependencies = { 'MunifTanjim/nui.nvim' },
	keys = { { ':', '<cmd>FineCmdline<cr>', { mode = 'n', desc = 'Open Command Line' } } },
	config = function()
		require('fine-cmdline').setup({
			cmdline = {
				enable_keymaps = true,
				smart_history = true,
				prompt = '   ',
			},
			popup = {
				position = {
					row = '100%',
					col = '50%',
				},
				size = {
					width = '30%',
				},
				border = {
					style = 'none',
				},
				win_options = {
					winhighlight = 'Normal:CursorLine,FloatBorder:FloatBorder',
				},
			},
		})
	end,
}
