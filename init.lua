require("config.lazy")
vim.opt.guicursor = ""
vim.opt.number = true
vim.keymap.set("n", "<leader>/", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "F", ":CFormateur42<CR> <BAR> :w<CR>")
vim.opt.clipboard = "unnamedplus"

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
vim.keymap.set('n', '<A-h>', '<C-w>h')
vim.keymap.set('n', '<A-j>', '<C-w>h')
vim.keymap.set('n', '<A-left>', '<C-w>h')
vim.keymap.set('n', '<A-k>', '<C-w>l')
vim.keymap.set('n', '<A-l>', '<C-w>l')
vim.keymap.set('n', '<A-right>', '<C-w>l')
vim.keymap.set('n', '<leader>vs', ':vsplit<CR>', { desc = 'Vertical Split' })
vim.cmd("set termguicolors")
vim.cmd("highlight WinSeparator guifg=#24273a")

local api = require("nvim-tree.api")
vim.api.nvim_create_autocmd("BufEnter", {
    nested = true,
    callback = function()
        if (vim.fn.bufname() == "NvimTree_1") then return end

        api.tree.find_file({ buf = vim.fn.bufnr() })
    end,
})
vim.diagnostic.config({
  virtual_text = true,  -- Affiche les erreurs en ligne
  underline = true,
})
