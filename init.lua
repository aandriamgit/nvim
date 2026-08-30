require("config.lazy")
vim.g.copilot_no_tab_map = true
vim.opt.guicursor = ""
vim.opt.number = true
vim.keymap.set("n", "<leader>/", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "F", ":CFormateur42<CR> <BAR> :w<CR>")
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'LSP Code Actions' })
vim.keymap.set("i", "<C-p>", 'copilot#Accept("<CR>")', {
  expr = true,
  silent = true,
  replace_keycodes = false,
})
vim.keymap.set("n", "<leader>cd", ":Copilot disable<CR>", { desc = "Copilot Disable" })
vim.keymap.set("n", "<leader>ce", ":Copilot enable<CR>", { desc = "Copilot Enable" })
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.python3_host_prog = vim.fn.expand('~/.pyenv/shims/python')
vim.opt.scrolloff = 4
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
vim.cmd("highlight WinSeparator guifg=#24273A guibg=NONE")

local api = require("nvim-tree.api")
vim.api.nvim_create_autocmd("BufEnter", {
    nested = true,
    callback = function()
        if (vim.fn.bufname() == "NvimTree_1") then return end

        api.tree.find_file({ buf = vim.fn.bufnr() })
    end,
})
vim.diagnostic.config({
  virtual_text = true,
  underline = true,
})

vim.filetype.add({
  extension = {
    gd = 'gdscript',
    gdshader = 'gdshader',
    tscn = 'godot_resource',
    tres = 'godot_resource'
  },
})
