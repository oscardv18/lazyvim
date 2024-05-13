return {
  -- Set tokyonight theme with bg transparent
  {
    "tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "sainnhe/sonokai",
    priority = 1000,
    config = function()
      vim.g.sonokai_transparent_background = "1"
      vim.g.sonokai_enable_italic = "1"
      vim.g.sonokai_style = "andromeda"
      -- vim.cmd.colorscheme("sonokai")
    end,
  },
  -- {
  --   "olimorris/onedarkpro.nvim",
  --   priority = 1000, -- ensure it loads first
  --   opts = {
  --     options = {
  --       transparency = true,
  --     },
  --   },
  -- },
  {
    "navarasu/onedark.nvim",
    priority = 1000,
    opts = {
      style = 'darker',
      transparent = true,
    }
  },
  {
    "LazyVim/LazyVim",
    opts = {
      --colorscheme = "onedark_dark",
      colorscheme = "onedark",
    },
  },
}
