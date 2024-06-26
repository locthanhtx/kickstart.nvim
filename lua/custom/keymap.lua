local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Toggle Neotree
vim.keymap.set('n', '<D-e>', ':NvimTreeToggle<CR>', opts)

vim.keymap.set('n', '<D-/>', '<ESC><CMD>lua require("Comment.api").toggle.linewise.current()<CR>', opts)
vim.keymap.set('v', '<D-/>', '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>', opts)

-- [[ keymap for MacOS]]
-- Ctrl + s to save file
vim.keymap.set('n', '<D-s>', ':w<CR>', {})
vim.keymap.set('i', '<D-s>', '<ESC>:w<CR>', {})
-- copy
vim.keymap.set('v', '<D-C>', '"+y"', {})
-- paste
vim.keymap.set('n', '<D-V>', '"+p"', {})
-- cut
vim.keymap.set('v', '<D-X>', '"+d"', {})

vim.keymap.set('v', '<Tab>', '>gv', opts)
vim.keymap.set('v', "<S-Tab>", '<gv', opts)


-- Set keymap for bufferline
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', { desc = 'Move next tab' })
vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { desc = 'Move previos tab' })
vim.keymap.set('n', '<leader>w', ':Bdelete<CR>', { desc = 'Close buffer without close tab' })
