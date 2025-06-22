-- 基本設定

local opt = vim.opt

-- ---------------------------------
-- Common
-- ---------------------------------

-- ヤンクとクリップボードを共有
opt.clipboard = "unnamedplus"

-- ---------------------------------
-- Search
-- ---------------------------------

-- 大文字、小文字の区別をしない
opt.ignorecase = true

-- 検索結果をハイライト
opt.hlsearch = true

-- ---------------------------------
-- Display
-- ---------------------------------

-- 行番号の表示
opt.number = true

-- デフォルトのシェルをzshに設定
opt.shell = "/bin/zsh"

-- インデントの幅
opt.shiftwidth = 2

-- タブの幅
opt.tabstop = 2

-- タブを空白スペースにする
opt.expandtab = true

-- 新しい行にしたとき自動でインデントが反映される
opt.autoindent = true

-- 24bit カラーを有効化
vim.opt.termguicolors = true

-- 背景をダークに設定
vim.opt.background = "dark"
