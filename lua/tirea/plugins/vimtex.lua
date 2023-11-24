return {
	'lervag/vimtex',
	ft = { 'tex' },
	config = function()
		vim.cmd([[filetype plugin indent on]])
		vim.cmd([[let g:vimtex_view_method = 'zathura']])
	end,
}
