local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

-- Space Leader
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("", "<leader>i", ":set list!<CR>", opts)
keymap("", "<leader>p", "<ESC>:set paste<CR>i", opts)

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

keymap("v", "p", '"_dP', opts)
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
keymap("v", "J", ":m .+1<CR>==", opts)
keymap("v", "K", ":m .-2<CR>==", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

vim.cmd "cnoremap <expr> %% expand('%:h').'/'"

-- Extension keymaps
keymap("n", "<A-1>", "<cmd>NvimTreeToggle<cr>", opts)
keymap("n", "<A-2>", "<cmd>TagbarToggle<cr>", opts)

-- TODO telescope

keymap("n", "t]", "<cmd>BufferLineCycleNext<cr>", opts)
keymap("n", "t[", "<cmd>BufferLineCyclePrev<cr>", opts)
keymap("n", "tp", "<cmd>BufferLinePick<cr>", opts)
