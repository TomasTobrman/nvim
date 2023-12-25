return {
	'neovim/nvim-lspconfig',
	dependencies = {
		'hrsh7th/cmp-nvim-lsp',
		{ 'antosha417/nvim-lsp-file-operations', config = true },
		{
			'SmiteshP/nvim-navbuddy',
			dependencies = {
				'SmiteshP/nvim-navic',
				'MunifTanjim/nui.nvim',
			},
			opts = { lsp = { auto_attach = true } },
		},
	},
	event = { 'BufReadPre', 'BufNewFile' },
	config = function()
		local servers = {
			lua_ls = {
				settings = {
					Lua = {
						diagnostics = { globals = { 'vim' } },
						workspace = {
							library = {
								[vim.fn.expand('$VIMRUNTIME/lua')] = true,
								[vim.fn.stdpath('config') .. '/lua'] = true,
							},
						},
					},
				},
			},

			eslint = {
				filetypes = { 'javascript' },
				rootPatterns = { '.git' },
			},

			clangd = { filetypes = { 'c', 'cpp' } },
			jdtls = { filetypes = { 'java' } },
			intelephense = { filetypes = { 'php' } },
			pyright = { filetypes = { 'python' } },
			html = { filetypes = { 'html', 'twig' } },
		}

		local lspconfig = require('lspconfig')
		local cmp_nvim_lsp = require('cmp_nvim_lsp')
		local opts = { noremap = true, silent = true }
		local on_attach = function(client, bufnr)
			opts.buffer = bufnr

			if client.server_capabilities.documentSymbolProvider then
				require('nvim-navic').attach(client, bufnr)
				require('nvim-navbuddy').attach(client, bufnr)

				opts.desc = 'Open NavBuddy'
				vim.keymap.set('n', '<leader>nb', require('nvim-navbuddy').open, opts)
			end

			opts.desc = 'Show LSP [R]eferences'
			vim.keymap.set('n', 'gR', '<cmd>Telescope lsp_references<cr>', opts)

			opts.desc = 'Go to [D]eclaration'
			vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)

			opts.desc = 'Show LSP [d]efinitions'
			vim.keymap.set('n', 'gd', '<cmd>Telescope lsp_definitions<cr>', opts)

			opts.desc = 'Show LSP [i]mplementations'
			vim.keymap.set('n', 'gi', '<cmd>Telescope lsp_implementations<cr>', opts)

			opts.desc = 'Show LSP [t]ype Definitions'
			vim.keymap.set('n', 'gt', '<cmd>Telescope lsp_type_definitions<cr>', opts)

			opts.desc = '[c]ode [a]ctions'
			vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)

			opts.desc = '[r]e[n]ame'
			vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)

			opts.desc = '[s]how buffer [D]iagnostics'
			vim.keymap.set('n', '<leader>sD', '<cmd>Telescope diagnostics bufnr=0<cr>', opts)

			opts.desc = '[s]how line [b]iagnostics'
			vim.keymap.set('n', '<leader>sd', vim.diagnostic.open_float, opts)

			opts.desc = 'Go to previous [d]iagnostic'
			vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)

			opts.desc = 'Go to next [d]iagnostic'
			vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)

			opts.desc = 'Show documentation for what is under cursor'
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)

			opts.desc = '[r]e[s]tart LSP'
			vim.keymap.set('n', '<leader>rs', '<cmd>LspRestart<cr>', opts)
		end

		local capabilities = cmp_nvim_lsp.default_capabilities()

		local signs = { Error = 'E ', Warn = 'W ', Hint = 'H ', Info = 'I ' }
		for type, icon in pairs(signs) do
			local hl = 'DiagnosticSign' .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = '' })
		end

		for server, settings in pairs(servers) do
			settings.capabilities = capabilities
			settings.on_attach = on_attach
			lspconfig[server].setup(settings)
		end
	end,
}
