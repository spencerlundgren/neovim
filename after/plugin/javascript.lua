require("dap-vscode-js").setup({
  adapters = { 'pwa-node', 'pwa-chrome', 'node-terminal', 'pwa-extensionHost' },
})

--[[ for _, language in ipairs({ "typescript", "javascript" }) do ]]
--[[   require("dap").configurations[language] = { ]]
--[[     { ]]
--[[       type = 'pwa-node', ]]
--[[       request = 'launch', ]]
--[[       name = 'Web Server', ]]
--[[       program = '${workspaceFolder}/build/web.bundle.js', ]]
--[[       cwd = '${workspaceFolder}', ]]
--[[       outputCapture = 'std' ]]
--[[     }, ]]
--[[   } ]]
--[[ end ]]

