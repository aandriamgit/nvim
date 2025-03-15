return {
 'saghen/blink.cmp',
  dependencies = 'rafamadriz/friendly-snippets',

  version = '*',

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = {     preset = "enter",
    ["<C-y>"] = { "select_and_accept" },},
    cmdline = {
	    enabled = false
    },
    completion = {
	        ghost_text = {
			enabled = true,
    },
	    keyword = { range = 'prefix'},
	    list = { selection = { preselect = true, auto_insert = false},
	     max_items = 20,
    },
	    menu = {
		    winhighlight = "Normal:PopMenu,FloatBorder:FloatBorder,CursorLine:Visual,Search:None",
		    border = "rounded",
      draw = {
	treesitter = {"lsp"},
         columns = {
           { "label", "label_description", gap = 1 },
           { "kind_icon", "kind" }
         },
       },
      scrollbar = false,
	    },

    },
    appearance = {
      nerd_font_variant = 'mono'
    },

    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
      providers = {
	      snippets = {
		      score_offset = -1,
	      },
	      path = {
		      opts = { get_cwd = vim.uv.cwd },
	      },
	      buffer = {
		      max_items = 10,
	      },
      },
      min_keyword_length = 3,
    },

    fuzzy = { implementation = "prefer_rust_with_warning" }
  },
  opts_extend = { "sources.default" }
}
