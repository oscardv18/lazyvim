return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      ---@class ParserInfo
      local parser_configs = require("nvim-treesitter.parsers").get_parser_configs()

      parser_configs.blade = {
        install_info = {
          url = "https://github.com/EmranMR/tree-sitter-blade",
          files = { "src/parser.c" },
          branch = "main",
        },
        filetype = "blade",
      }
      vim.filetype.add({
        pattern = {
          [".*%.blade%.php"] = "blade",
        },
      })

      local bladeGrp
      vim.api.nvim_create_augroup("BladeFiltypeRelated", { clear = true })
      vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
        pattern = "*.blade.php",
        group = bladeGrp,
        callback = function()
          vim.opt.filetype = "blade"
        end,
      })

      vim.treesitter.language.register("blade", "blade")
      table.insert(opts.ensure_installed, "blade")

      return opts
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",

    opts = {
      ensure_installed = {
        "astro",
        "cmake",
        "cpp",
        "css",
        "fish",
        "gitignore",
        "go",
        "graphql",
        "http",
        "java",
        "php",
        "rust",
        "scss",
        "sql",
        "svelte",
        "blade",
      },
    },
  },
}
