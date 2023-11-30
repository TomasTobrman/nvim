return {
	'norcalli/nvim-colorizer.lua',
	keys = { { '<leader>tc', '<cmd>ColorizerToggle<cr>', { mode = 'n', desc = 'Toggle Colorizer' } } },
	config = function()
		require('colorizer').setup({
			['*'] = {
				RGB = false,
				names = false,
			},
			css = {
				css = true,
				css_fn = true,
			},
		})
	end,
}
