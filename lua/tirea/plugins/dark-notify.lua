return {
	'cormacrelf/dark-notify',
	event = 'VeryLazy',
	config = function()
		local dn = require('dark_notify')
		dn.run({
			dark = 'oxocarbon',
			light = 'oxocarbon',
		})

		vim.keymap.set('n', '<leader>tt', function()
			dn.toggle()
		end, { desc = 'Toggle dark/light theme' })
	end,
}
