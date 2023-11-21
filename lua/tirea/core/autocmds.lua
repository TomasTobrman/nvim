-- set filetype c for .h and .c files
vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
	desc = 'Set correct filetype to .h and .c files',
	pattern = { '*.c', '*.h' },
	callback = function()
		vim.opt.filetype = 'c'
	end,
})

-- expand tab for c/c++
vim.api.nvim_create_autocmd('FileType', {
	desc = 'Expand Tab for C and C++ files',
	pattern = { 'c', 'cpp' },
	callback = function()
		vim.opt_local.expandtab = true
	end,
})
