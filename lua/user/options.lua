local options = {
    number = true,
    relativenumber = true,
    numberwidth = 4,
    tabstop = 2,
    softtabstop = 2,
    shiftwidth = 2,
    expandtab = true,
    autoindent = true,
    smartindent = true,
    ignorecase = true,
    smartcase = true,
    incsearch = true,
    hlsearch = true,
    vb = false,
    splitbelow = true,
    splitright = true,
    showcmd = true,
    wrap = false,
    cursorline = true,
    colorcolumn = { 120 },
    laststatus = 2,
    updatetime = 1618,
    ttimeout = true,
    ttimeoutlen = 1,
    ttyfast = true,
    listchars = "tab:»܁,trail:᙮,extends:›,precedes:‹,space:܁",
    foldmethod = "syntax",
    wildmenu = true,
    path = ".,**"
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
