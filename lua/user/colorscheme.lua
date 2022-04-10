-- https://github.com/tmux/tmux/issues/1246
vim.cmd [[
if (exists('+termguicolors'))
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
]]

vim.cmd "silent! colorscheme nord"

vim.cmd [[
silent! let g:lightline = {
  \ 'colorscheme': 'nord',
  \ 'inactive': {
  \   'left': [ [ 'placeholder' ],
  \     [ 'readonly', 'filename', 'modified' ] ]
  \   },
  \ 'component': {
  \   'placeholder' : ''
  \   },
  \ }
]]

vim.cmd [[
highlight Keyword guifg=#D08770 gui=NONE ctermfg=117 cterm=NONE
highlight Statement guifg=#D08770 gui=NONE ctermfg=117 cterm=NONE
highlight Function guifg=#88C0D0 gui=NONE ctermfg=117 cterm=NONE
highlight Type guifg=#81A1C1 gui=NONE ctermfg=117 cterm=NONE
]]


-- TODO continue with autocmd colors
