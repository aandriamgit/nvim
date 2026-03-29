return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato",
	transparent_background = true,
        integrations = {
	  noice = true,
	  snacks = true,
	  blink_cmp = true,
          treesitter = true,
	  nvimtree = true,
	  notify = true,
          native_lsp = {
            enabled = true,
            virtual_text = {
              errors = { "italic" },
              hints = { "italic" },
              warnings = { "italic" },
              information = { "italic" },
            },
            underlines = {
              errors = { "underline" },
              hints = { "underline" },
              warnings = { "underline" },
              information = { "underline" },
            },
          },
          telescope = true,
          which_key = true,
          indent_blankline = { enabled = true, scope_color = "lavender" },
        },
	highlight_overrides = {
       macchiato = function(mocha)
         return {
           NvimTreeNormal = { bg = mocha.none }, -- Example: Set background to none (transparent)
           -- Add other highlight overrides here
         }
       end,
     },
      })
      vim.cmd.colorscheme("catppuccin")
      vim.api.nvim_set_hl(0, "Pmenu", { bg = "NONE" })
      vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#a6da95" })
      vim.api.nvim_set_hl(0, "PmenuSbar", { bg = "NONE" })
      vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
      vim.api.nvim_set_hl(0, "PopMenu", { bg = "NONE" })
      vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#24273A", bg = "NONE" })
      vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "NONE" })
      vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "NONE" })
      vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { fg = "#24273A", bg = "NONE" })
      vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "NONE" })
      vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
      vim.api.nvim_set_hl(0, "LineNr", { bg = "NONE" })
      vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "NONE" })
    end,
  },
}
