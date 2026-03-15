return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      -- 将你的快捷键合并进 LazyVim 默认的 cmp 配置中
      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<Tab>"] = cmp.mapping.confirm({ select = true }),
        -- 如果你想禁用 Enter 键的确认功能，把下面这行取消注释
        ["<CR>"] = cmp.config.disable,
      })
    end,
  },
  {
    "saghen/blink.cmp",
    optional = true,
    opts = {
      keymap = {
        preset = "default",
        -- 1. 回车键直接 fallback（回退）到系统的默认行为（即换行）
        ["<CR>"] = { "fallback" },
        -- 2. Tab 键负责选中并上屏
        ["<Tab>"] = { "select_and_accept", "fallback" },
      },
    },
  },
}
