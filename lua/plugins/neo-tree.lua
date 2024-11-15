-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require("neo-tree").setup({
      filesystem = {
        follow_current_file = true,  -- 現在のファイルを追跡
        hijack_netrw_behavior = "open_default",
      },
      window = {
        position = "left",           -- 位置を左に設定
        width = 30,
      },
      default_component_configs = {
        indent = {
          padding = 1,
        },
      },
    })
    vim.api.nvim_create_autocmd("VimEnter", {
      command = "Neotree show"
    })
  end,
}
