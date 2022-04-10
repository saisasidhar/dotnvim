local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
	return
end

nvim_tree.setup {
	auto_close = true,
	open_on_tab = false,
	view = {
		number = true,
		relativenumber = true
	},
	git = {
		enable = false
	},
	actions = {
		open_file = {
			quit_on_open = true
		}
	},
  highlights = {
		tab_selected = {
      guifg = { attribute = "fg", highlight = "Normal" },
      guibg = { attribute = "bg", highlight = "Normal" },
    }
  }
}

vim.g.nvim_tree_show_icons = {
	git = 0,
	folders = 1,
	files = 1,
	folder_arrows = 1
}
vim.g.nvim_tree_gitignore = 0
vim.g.nvim_tree_git_hl = 0
