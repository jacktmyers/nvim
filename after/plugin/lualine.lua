local custom_auto = require'lualine.themes.auto'
custom_auto.normal.c.bg = nil
custom_auto.normal.c.fg = '#FFFFFF'
custom_auto.insert.c.bg = nil
custom_auto.insert.c.fg = '#FFFFFF'
custom_auto.visual.c.bg = nil
custom_auto.visual.c.fg = '#FFFFFF'
custom_auto.replace.c.bg = nil
custom_auto.replace.c.fg = '#FFFFFF'
custom_auto.inactive.c.bg = nil
custom_auto.inactive.c.fg = '#FFFFFF'
custom_auto.terminal.c.bg = nil
custom_auto.terminal.c.fg = '#FFFFFF'
--[[
return {
  a = {
    bg      = "#292522",
    float   = "#34302C",
    sel     = "#403A36",
    ui      = "#867462",
    com     = "#C1A78E",
    fg      = "#ECE1D7",
  },
  b = {
    red     = "#D47766",
    yellow  = "#EBC06D",
    green   = "#85B695",
    cyan    = "#89B3B6",
    blue    = "#A3A9CE",
    magenta = "#CF9BC2",
  },
  c = {
    red     = "#BD8183",
    yellow  = "#E49B5D",
    green   = "#78997A",
    cyan    = "#7B9695",
    blue    = "#7F91B2",
    magenta = "#B380B0",
  },
  d = {
    red     = "#7D2A2F",
    yellow  = "#8B7449",
    green   = "#233524",
    cyan    = "#253333",
    blue    = "#273142",
    magenta = "#422741",
  },
}
]]--
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = custom_auto,
		component_separators = { left = '|', right = '|'},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {},
}
