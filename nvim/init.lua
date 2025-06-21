-- Neovim設定のエントリーポイント

-- 基本設定の読み込み
require("config.options")
require("config.keymaps")

-- プラグインマネージャーの初期化
require("config.lazy")
