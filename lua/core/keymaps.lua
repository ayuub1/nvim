vim.g.mapleader = ' '


vim.api.nvim_set_keymap('n' , '<Leader>q', ':q<CR>' , { noremap = true, silent = true })
vim.api.nvim_set_keymap('n' , '<Leader>v', ':vsplit<CR>' , { noremap = true, silent = true })
vim.api.nvim_set_keymap('n' , '<Leader>h', ':split<CR>' , { noremap = true, silent = true })
vim.api.nvim_set_keymap('n' , '<Leader>t', ':NvimTreeToggle<CR>' , { noremap = true, silent = true })
vim.api.nvim_set_keymap('n' , '<Leader>t-f', ':NvimTreeFindFile<CR>' , { noremap = true, silent = true })
vim.api.nvim_set_keymap('n' , '<Leader>a', ':terminal<CR>' , { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', ':Telescope find_files<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fb', ':Telescope live_grep<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>f', ':Telescope buffers<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fh', ':Telescope help_tags<cr>', { noremap = true, silent = true })
