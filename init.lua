require("config.lazy")
vim.opt.guicursor = ""
vim.opt.number = true
vim.keymap.set("n", "<leader>/", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "F", ":CFormateur42<CR> <BAR> :w<CR>")
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.scrolloff = 4
-- optionally enable 24-bit colour
vim.opt.termguicolors = true
vim.api.nvim_create_user_command("F", function()
  vim.cmd("CFormatter42")
  vim.cmd("w")
end, {})
-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
