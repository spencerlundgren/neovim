vim.keymap.set("n", "<leader>gg", vim.cmd.Git);

-- Diff the current file against n revision (instead of n commit)
--[[ function Diffrev() ]]
--[[   local  ]]


--[[ function! Diffrev(...) ]]
--[[]]
--[[   let a:target = @% ]]
--[[]]
--[[   "check argument count ]]
--[[   if a:0 == 0 ]]
--[[     "no revision number specified ]]
--[[     let a:revnum=0 ]]
--[[   else ]]
--[[     "revision number specified ]]
--[[     let a:revnum=a:1 ]]
--[[   endif ]]
--[[]]
--[[   let a:hash = system('git log -1 --skip='.a:revnum.' --pretty=format:"%h" ' . a:target) ]]
--[[   execute 'Gdiff' . a:hash ]]
--[[ endfunc ]]
