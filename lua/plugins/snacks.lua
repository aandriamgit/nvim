return {
"folke/snacks.nvim",
priority = 1000,
lazy = false,
  opts = {
    bigfile = { enabled = false},
    dashboard = {
	    preset = {
    keys = {
      { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
      { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
      { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
      { icon = " ", key = "q", desc = "Quit", action = ":qa" },
    },
    header =[[
           ┊       ┊   ┊    ┊        ┊                                                                              
           ┊       ┊   ┊   ˚★⋆｡˚  ⋆                                 　✦　˚                                          
           ┊       ┊   ⋆                                                                       ˚　                  
           ┊       ★⋆                                                                             　.　             
           ┊ ◦          █████╗ ██╗███╗   ██╗ █████╗  ███╗ ███████╗    ██╗   ██╗██╗███╗   ███╗                       
           ┊ .  ˚.     ██╔══██╗██║████╗  ██║██╔══██╗██╔██╗██╔════╝    ██║   ██║██║████╗ ████║                       
          ˚★.          ███████║██║██╔██╗ ██║███████║╚═╝╚═╝███████╗    ██║   ██║██║██╔████╔██║        ╱|、           
                       ██╔══██║██║██║╚██╗██║██╔══██║      ╚════██║    ╚██╗ ██╔╝██║██║╚██╔╝██║       (˚ˎ 。7         
                       ██║  ██║██║██║ ╚████║██║  ██║      ███████║     ╚████╔╝ ██║██║ ╚═╝ ██║       |、˜            
                       ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝      ╚══════╝      ╚═══╝  ╚═╝╚═╝     ╚═╝       じしˍ,)ノ       

                                   ˚　.　　　　　   . ✦　　　                          　˚　.                       
                                           　✦　　 　.　　.　　　✦　˚ 　  ˚       ˚   　✦　　　.　                  
    ]],
  },
  sections = {
	  {section = "header"},
    { section = "keys", gap = 1 },
    {
	pane = 2,
	icon = " ",
	title = "Projects",
	section = "projects",
	indent = 2,
	padding = 2,
},
    {
      pane = 2,
      icon = " ",
      title = "Git Status",
      section = "terminal",
      enabled = function()
        return Snacks.git.get_root() ~= nil
      end,
      cmd = "git --no-pager diff --stat -B -M -C",
      height = 5,
      padding = 1,
      ttl = 5 * 60,
      indent = 3,
    },
  },
    },
    explorer = { enabled = false },
    indent = { enabled = false },
    input = { enabled =  false},
    picker = { enabled = false },
    notifier = { enabled = false },
    quickfile = { enabled =  false},
    scope = { enabled = false },
    scroll = { enabled = false },
    statuscolumn = { enabled = false },
    words = { enabled = false },
},
}
