require('lualine').setup {
	options = {
		icons_enabled = false,
		theme = 'ayu_light',
		component_separators = '|',
		section_separators = '',
	},
  extensions = {'quickfix', 'fugitive'}
}
