return {
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
    config = function()
      -- everforest設定
      vim.g.everforest_style = 'hard' -- 'soft', 'medium', 'hard'
      vim.g.everforest_better_performance = 1
      vim.g.everforest_enable_italic = 1
      vim.g.everforest_disable_italic_comment = 0
      vim.g.everforest_transparent_background = 0 -- 透明背景の場合は1

      -- カラースキーム適用
      vim.cmd("colorscheme everforest")
    end,
  },
}
