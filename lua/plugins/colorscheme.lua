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
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
    opts = {
      options = {
        transparency = true,
      },
    },
  },

  { "LazyVim/LazyVim", opts = {
    colorscheme = "onedark_dark",
  } },
}
