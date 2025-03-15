local mode_map = {
  ["n"] = "/ᐠ≽·ヮ·≼マ",
  ["no"] = "૮₍ ˶ᵔ ᵕ ᵔ˶ ₎ა",
  ["nov"] = "૮₍˶ •. •`` ⑅₎ა",
  ["noV"] = "૮₍ ˃ ⤙ ˂ ₎ა",
  ["no�"] = "૮₍ ˶•⤙•˶ ₎ა",
  ["niI"] = "☆૮꒰•༝  •。꒱ა",
  ["niR"] = "૮ ˶´ ᵕˋ ˶ა",
  ["niV"] = "૮₍´˶• . • ⑅ ₎ა",
  ["nt"] = "૮ ˶·~··˶ ა",
  ["v"] = "₍^ >ヮ<^₎ </>",
  ["vs"] = "૮₍｡´ᴖ ˔ ᴖ`｡₎ა",
  ["V"] = "૮ ･ ﻌ･ა",
  ["Vs"] = "૮ ˶´ ᵕˋ ˶ა",
  ["�s"] = "V-BLOCK",
  ["s"] = "SELECT",
  ["S"] = "S-LINE",
  ["�"] = "S-BLOCK",
  ["i"] = "≽/ᐠ - ˕ -マ≼ Ⳋ",
  ["ic"] = "INSERT",
  ["ix"] = "INSERT",
  ["R"] = "/ᐠ •̀ ˕ •́ マ",
  ["Rc"] = "REPLACE",
  ["Rx"] = "REPLACE",
  ["Rv"] = "V-REPLACE",
  ["Rvc"] = "V-REPLACE",
  ["Rvx"] = "V-REPLACE",
  ["c"] = "૮₍ ˶ᵔ ᵕ ᵔ˶ ₎ა ᗢ",
  ["cv"] = "EX",
  ["ce"] = "EX",
  ["r"] = "૮₍˶ •. • ⑅₎ა",
  ["rm"] = "MORE",
  ["r?"] = "CONFIRM",
  ["!"] = "SHELL",
  ["t"] = "₍^ >ヮ<^₎ </>",
}

local function custom_mode()
  local mode = vim.api.nvim_get_mode().mode
  return mode_map[mode] or mode
end

local custom_catp = require("lualine.themes.catppuccin")
custom_catp.normal.c.bg = "#24273a"
custom_catp.normal.b.bg = "#363a4f"
custom_catp.normal.a.fg = "#24273a"

return {
    {
        "nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            options = {
		globalstatus = true,
                component_separators = "",
                section_separators = { left = "", right = "" },
	        theme = custom_catp,
		disabled_filetypes = { statusline = { "dashboard", "alpha", "starter" } },
            },
            sections = {
		lualine_a = {
		 	{ custom_mode, separator = { left = "" }, right_padding = 2 },
		 },
        lualine_b = { "branch" },
        lualine_c = {
          {
            "diagnostics",
            symbols = {
              error = " ",
              warn = " ",
              info = " ",
              hint = " ",
            },
          },
          { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
          {
            "filename",
            path = 1,
            symbols = { modified = "  ", readonly = "  " }
          }
        },
        lualine_x = {
          {
            "diff",
            symbols = {
              added = " ",
              modified = " ",
              removed = " ",
            },
          },
        },
                lualine_y = {
                    { "filetype", separator = " ", padding = { left = 1, right = 0 } },
                    { "location", padding = { left = 0, right = 1 } },
                },
                lualine_z = {
                    {
			"mode",
                        separator = { right = "" },
                    },
                },
            },
        },
    },
}
