return {
	'norcalli/nvim-colorizer.lua',
	event = { 'BufReadPre', 'BufNewFile' },
	config = function()
		require('colorizer').setup({
			'*',
			css = {
				css = true,
				css_fn = true,
			},
		})
	end,
}
