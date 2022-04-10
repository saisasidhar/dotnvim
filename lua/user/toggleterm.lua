local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
	return
end

toggleterm.setup({
	size = 24,
	open_mapping = [[<a-9>]],
	hide_numbers = true,
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = 2,
	start_in_insert = true,
	insert_mappings = true,
	persist_size = true,
	direction = "float",
	close_on_exit = true,
	shell = vim.o.shell,
	float_opts = {
		border = "curved",
		winblend = 0,
		highlights = {
			border = "Normal",
			background = "Normal",
		},
	},
})


local Terminal = require("toggleterm.terminal").Terminal
local python = Terminal:new({ cmd = "python3", hidden = true })
local node = Terminal:new({ cmd = "node", hidden = true })

function _repl_toggle()
	-- TODO toggle REPL based on current file type
	-- TODO ipython if it exists
	python:toggle()
end
vim.api.nvim_set_keymap("n", "<a-8>", "<cmd>lua _repl_toggle()<CR>", {noremap = true})
