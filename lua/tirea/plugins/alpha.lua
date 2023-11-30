return {
	'goolord/alpha-nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	event = 'VimEnter',
	config = function()
		local alpha = require('alpha')
		local dashboard = require('alpha.themes.dashboard')

		---- Header ------------------------------------------------------------------------

		dashboard.section.header.val = {
			[[⠀⠀⠀⠀⣀⣀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢴⣤⣄⠀⠀⠀⠀⠀⢀⣤⣶⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⣀⡀⠀⠀⠀⠀]],
			[[⢴⣾⣿⣿⣿⣏⣉⣉⣉⣛⣛⣻⣿⣶⣦⣤⣀⠀⠀⠀⠀⠀⠀⠙⢷⠀⠀⠀⢠⡟⠀⠀⠀⠀⠀⠀⢀⣠⣤⣶⣾⣿⣛⣛⣋⣉⣉⣉⣿⣿⣿⣿⣶⠄]],
			[[⠀⠙⢿⣿⣿⣿⡁⠀⠀⣉⡿⠋⠉⠉⠙⠛⠻⢿⣦⣄⠀⠀⠀⠀⠘⣇⠀⢀⡟⠀⠀⠀⠀⢀⣤⣾⠿⠛⠋⠉⠉⠉⠻⣏⡉⠀⠈⣹⣿⣿⣿⠟⠁⠀]],
			[[⠀⠀⠀⠙⣿⣿⣟⠉⠉⣙⡇⠀⠀⠀⠀⠀⠀⠀⠈⠛⢿⣦⡀⠀⠀⢹⠀⣸⠃⠀⠀⣠⣾⠟⠋⠀⠀⠀⠀⠀⠀⠀⢀⣿⡉⠉⠹⣿⣿⡟⠉⠀⠀⠀]],
			[[⠀⠀⠀⠀⠈⢿⣿⣟⠉⢉⣿⣦⣄⣀⣀⠀⠀⠀⠀⠀⠀⠙⢿⣦⡀⠸⡇⡿⠀⣠⣾⠟⠁⠀⠀⠀⠀⠀⢀⣀⣀⣤⣾⣍⠉⠙⣿⣿⡯⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠸⣿⣿⣿⠉⠀⠀⣀⣨⡟⠛⠛⠒⠒⠤⢄⣀⠀⠙⢿⣆⣷⣧⣾⠟⠁⠀⣀⠤⠄⠒⠚⠛⠛⣯⣀⡀⠀⠉⢹⣿⣿⡿⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⡟⠉⣀⡤⢷⡦⠄⠀⠀⠀⠀⠈⠙⠢⣌⣻⣿⣿⢋⠤⠚⠉⠀⠀⠀⠀⠀⠠⣶⠷⣄⡈⠙⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠸⠿⣿⣿⣿⣁⡤⠾⣷⣤⣴⠶⢶⣒⡻⠿⠿⢛⣿⣿⣿⣟⠛⠽⠿⢓⣲⠶⢶⣦⣴⡟⠦⣄⣹⣿⣿⡿⠟⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠛⣿⣿⣿⢛⣉⠥⠒⠉⠁⠀⣀⠔⢈⠔⣽⣿⣿⡝⢌⠒⢄⡀⠀⠉⠑⠢⢍⣙⢻⣿⣿⡟⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⠋⠀⠀⠀⢀⡤⠊⠀⡴⠋⣼⡟⣿⡟⢿⡄⠳⡄⠈⠢⣀⠀⠀⠀⠈⢻⣷⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣯⢽⣀⠀⣀⣴⡏⠀⢀⡞⠁⣸⡿⠀⠉⠀⠘⣿⡀⠙⣆⠀⠘⣷⣄⡀⢀⡸⢯⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠚⣿⣿⡶⠋⡿⠋⣽⠷⣶⡟⠀⢰⣿⠃⠀⠀⠀⠀⢹⣧⠀⠘⣷⡖⢿⡍⠻⡏⠳⣶⣿⡟⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣷⡞⠀⢠⡇⢰⡟⠀⠀⣾⡏⠀⠀⠀⠀⠀⠈⣿⡆⠀⠘⣧⠀⣷⠀⠹⣶⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣶⡟⠙⣿⡀⠀⣰⡿⠀⠀⠀⠀⠀⠀⠀⠸⣷⡀⠀⣹⣟⠙⣷⣾⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⢿⣿⣿⣿⡿⠿⠿⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠙⠿⠿⠿⣿⣿⣿⣿⠟⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⠀⠀⠀⠀⠀⠀⠀       ⠀⠀⠀⠀⠀⠀⠀⢸⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		}

		---- Buttons -----------------------------------------------------------------------

		dashboard.section.buttons.val = {
			dashboard.button('e', 'New File', ':ene <BAR> startinsert <cr>'),
			dashboard.button('f', 'Find File', '<cmd>Telescope find_files<cr>'),
			dashboard.button('r', 'Recents', '<cmd>Telescope oldfile<cr>'),
			dashboard.button('m', 'Mason', '<cmd>Mason<cr>'),
			dashboard.button('l', 'Lazy', '<cmd>Lazy<cr>'),
			dashboard.button('q', 'Quit', '<cmd>qa<cr>'),
		}

		---- Footer ------------------------------------------------------------------------

		dashboard.section.footer.val = function()
			local total_plugins = #vim.tbl_keys(require('lazy').plugins())
			return 'Loaded ' .. total_plugins .. ' plugins total'
		end

		---- Highlights --------------------------------------------------------------------

		for _, button in ipairs(dashboard.section.buttons.val) do
			button.opts.hl = 'TireaAlphaButton'
			button.opts.hl_shortcut = 'TireaAlphaButton'
			button.opts.cursor = 0
			button.opts.width = 28
		end

		dashboard.section.header.opts.hl = 'TireaAlphaHeader'
		dashboard.section.buttons.opts.hl = 'TireaAlphaButton'
		dashboard.section.footer.opts.hl = 'TireaAlphaFooter'

		------------------------------------------------------------------------------------

		alpha.setup(dashboard.opts)
		vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])

		-- set highlight so they load at startup
		vim.cmd([[ highlight TireaAlphaHeader guifg=#33B1FF ]])
		vim.cmd([[ highlight TireaAlphaButton guifg=#82CFFF ]])
		vim.cmd([[ highlight TireaAlphaFooter guifg=#525252 ]])

		-- set autocmd to reload them after a colorscheme might have cleared them
		vim.cmd([[ autocmd ColorScheme *
			\ highlight TireaAlphaHeader guifg=#33B1FF |
			\ highlight TireaAlphaButton guifg=#82CFFF |
			\ highlight TireaAlphaFooter guifg=#525252
		]])
	end,
}
