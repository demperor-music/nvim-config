local keybind = vim.api.nvim_set_keymap
keybind('n', '<A-`>', ':NvimTreeToggle<CR> <C-w>l', {noremap = true, silent = true})
keybind('n', '<C-s>', ':w<CR>', {noremap = true})
keybind('n', '<C-f>', ':Telescope find_files<CR>', {noremap = true, silent = true})
keybind('n', '<A-=>', ':TransparentToggle<CR>', {noremap = true, silent = true})
