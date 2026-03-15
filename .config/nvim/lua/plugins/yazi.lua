return {
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  keys = {
    -- 👇 核心快捷键：在当前打开的文件位置呼出 Yazi 悬浮窗
    {
      "<leader>-",
      "<cmd>Yazi<cr>",
      desc = "在当前文件位置打开 yazi",
    },
    -- 👇 在整个项目（工作目录）的根目录呼出 Yazi
    {
      "<leader>cw",
      "<cmd>Yazi cwd<cr>",
      desc = "在工作目录打开 yazi",
    },
    -- 👇 恢复上一次关闭前的 Yazi 状态/目录
    {
      "<c-up>",
      "<cmd>Yazi toggle<cr>",
      desc = "恢复上次的 yazi 会话",
    },
  },
  opts = {
    -- 如果你希望在终端里输入 `nvim .` 打开文件夹时直接启动 Yazi，可以把它设为 true
    open_for_directories = false,
    keymaps = {
      show_help = "<f1>",
    },
  },
}
