vim.g.db_ui_use_nerd_fonts = 1

-- Hack to set the dadbod results for mongo to javascript
-- All json in this directory will be converted to json
-- vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
--   pattern = "/tmp/nvim.tanner/*.json",
--   command = "set filetype=javascript"
-- })
--
