-- キーマッピング設定

local keymap = vim.keymap.set

-- ---------------------------------
-- 基本キーマッピング
-- ---------------------------------

-- Escの2回押しでハイライト消去
keymap('n', '<Esc><Esc>', ':nohlsearch<CR><ESC>', { noremap = true, silent = true })

-- jjでインサートモードから抜ける
keymap('i', 'jj', '<ESC>', { noremap = true })
