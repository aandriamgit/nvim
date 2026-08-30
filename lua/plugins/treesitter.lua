return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()     
	local status_ok, configs = pcall(require, "nvim-treesitter.configs")
        if not status_ok then
            return
        end

        configs.setup({
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "html", "gdscript", "gdshader", "godot_resource"},
	    auto_install = true,
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
