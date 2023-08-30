require('dapui').setup()
local dap, dapui = require('dap'), require('dapui')
local parse = require'json5'.parse
require('dap.ext.vscode').json_decode = parse

--[[ require('dap.ext.vscode').load_launchjs('.vscode/launch.json', {}) ]]

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end








--[[ dap.adapters.node = { ]]
--[[ 	type = "executable", ]]
--[[ 	command = "node", ]]
	--[[ args = { "~/.local/share/nvim/dapinstall/jsnode/vscode-node-debug2/out/src/nodeDebug.js" }, ]]
--[[ 	args = { vim.fn.stdpath('data') .. "/site/pack/packer/opt/vscode-js-debug" }, ]]
--[[ } ]]



--[[ dap.adapters.node = { ]]
--[[   type = 'executable', ]]
--[[   command = 'node', ]]
  --[[ args = { os.getenv('HOME') .. '/dev/microsoft/vscode-node-debug2/out/src/nodeDebug.js' }, ]]
  --[[ args = { vim.fn.stdpath('data') .. '/mason/packages/js-debug-adapter/js-debug-adapter'}, ]]
--[[   args = { vim.fn.stdpath('data') .. '/site/pack/packer/opt/vscode-js-debug'}, ]]
--[[ } ]]











-- keymaps
local continue = function()
  if vim.fn.filereadable('.vscode/launch.json') then
    --[[ require('dap.ext.vscode').load_launchjs('.vscode/launch.json', { node = {'javascript', 'typescript' }}) ]]
    --[[ require('dap.ext.vscode').load_launchjs(nil, { node = {'javascript', 'typescript' }}) ]]
    print('in the if statement')
  else
    print('in the else')
  end
  require('dap').continue()
end
vim.keymap.set('n', '<F5>', continue)

vim.keymap.set('n', '<F10>', ":lua require('dap').step_over()<CR>")
vim.keymap.set('n', '<F11>', ":lua require('dap').step_into()<CR>")
vim.keymap.set('n', '<F12>', ":lua require('dap').step_out()<CR>")
vim.keymap.set('n', '<leader>b', ":lua require('dap').toggle_breakpoint()<CR>")
vim.keymap.set('n', '<leader>B', ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
vim.keymap.set('n', '<leader>lp', ":lua require('dap').set_breakpoint(nil, nil, vin.fn.input('Log point message: '))<CR>")

vim.api.nvim_set_keymap("n", "<leader>dt", ":DapUiToggle<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>db", ":DapToggleBreakpoint<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>dc", ":DapContinue<CR>", {noremap=true})
-- reset ui of the debugger windows
vim.api.nvim_set_keymap("n", "<leader>dr", "lua require('dapui').open({reset = true})", {noremap=true})
