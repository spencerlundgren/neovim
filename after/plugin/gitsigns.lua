require('gitsigns').setup {
	signs = {
		add = { text = '+' },
		change = { text = '~' },
		delete = { text = '_' },
		topdelete = { text = '‾' },
		changedelete = { text = '~' },
	},
	on_attach = function(bufnr)
		vim.keymap.set('n', '<leader>ph', require('gitsigns').prev_hunk, { buffer = bufnr, desc = 'go to [P]revious [H]unk' })
		vim.keymap.set('n', '<leader>nh', require('gitsigns').next_hunk, { buffer = bufnr, desc = 'go to [N]ext [H]unk' })
		-- vim.keymap.set('n', '<leader>ph', require('gitsigns').preview_hunk, { buffer = bufnr, desc = '[P]review [H]unk' })
		vim.keymap.set('n', '<leader>sh', require('gitsigns').stage_hunk, { buffer = bufnr, desc = '[S]tage [H]unk' })
		vim.keymap.set('n', '<leader>rh', require('gitsigns').stage_hunk, { buffer = bufnr, desc = '[R]eset [H]unk' })
		vim.keymap.set('n', '<leader>fd', require('gitsigns').diffthis, { buffer = bufnr, desc = '[F]ile [D]iff' })
	end,
}
