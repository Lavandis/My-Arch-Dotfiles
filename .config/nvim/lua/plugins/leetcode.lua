-- ~/.config/nvim/lua/plugins/leetcode.lua
return {
  "kawre/leetcode.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim", -- 必需依赖
    "MunifTanjim/nui.nvim",

    -- 可选依赖：用于选择具体的编程语言或通过 telescope 搜索
    "nvim-treesitter/nvim-treesitter",
    "rcarriga/nvim-notify",
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    -- 在这里配置你的首选语言
    lang = "python3", -- 或者 "python3", "golang", "java" 等
    cn = { -- leetcode.cn
      enabled = true, ---@type boolean
      translator = true, ---@type boolean
      translate_problems = true, ---@type boolean
    },
    -- 这里的配置可以让你仅在传入 leetcode 参数时加载插件，避免污染日常编辑体验
    -- 启动方式：nvim leetcode
    arg = "leetcode",
  },
}
