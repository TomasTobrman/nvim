return {
	'rcarriga/nvim-notify',
	event = 'VimEnter',
	config = function()
		local notify = require('notify')

		notify.setup({
			level = vim.log.levels.INFO,
			render = 'wrapped-compact',
			stages = 'slide',
			timeout = 5000,
			top_down = false,
		})

		vim.notify = notify
	end,
}
