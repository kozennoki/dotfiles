-- キーマッピング設定

local keymap = vim.keymap.set

-- ---------------------------------
-- 基本キーマッピング
-- ---------------------------------

-- Escの2回押しでハイライト消去
keymap('n', '<Esc><Esc>', ':nohlsearch<CR><ESC>', { noremap = true, silent = true })

-- jjでインサートモードから抜ける
keymap('i', 'jj', '<ESC>', { noremap = true })

-- ---------------------------------
-- プラグイン用キーマッピング
-- ---------------------------------

-- leaderキーの設定
vim.g.mapleader = " "

-- nvim-tree
keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
keymap('n', '<leader>e', ':NvimTreeFocus<CR>', { noremap = true, silent = true })

-- Telescope (Fuzzy finder)
keymap('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true, silent = true })
keymap('n', '<leader>fg', ':Telescope live_grep<CR>', { noremap = true, silent = true })
keymap('n', '<leader>fb', ':Telescope buffers<CR>', { noremap = true, silent = true })
keymap('n', '<leader>fh', ':Telescope help_tags<CR>', { noremap = true, silent = true })
