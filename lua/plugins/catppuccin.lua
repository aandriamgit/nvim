return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato",
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
    end,
  },
}
