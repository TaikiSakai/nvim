return {
    'navarasu/onedark.nvim',

    config = function ()
      require('onedark').setup({
        transparent_background = true,
      })
    end,
  
    init = function()
      vim.cmd.colorscheme 'onedark'
      vim.cmd.hi 'Comment gui=none'
    end,
  }