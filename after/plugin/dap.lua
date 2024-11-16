require('dapui').setup()
local dap, dapui = require('dap'), require('dapui')
local parse = require'json5'.parse
require('dap-python').setup()



dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

--[[ vim.keymap.set('n', '<F5>', continue) ]]
vim.keymap.set('n', '<F5>', ":lua require('dap').continue()<CR>")

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
