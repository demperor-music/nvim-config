local wilder = require('wilder')
wilder.setup({modes = {':', '/', '?'}})
wilder.set_option('renderer', wilder.popupmenu_renderer({
  -- highlighter applies highlighting to the candidates
  highlighter = wilder.basic_highlighter(),
  pumblend = 20,
  left = {' ', wilder.popupmenu_devicons()},
  right = {' ', wilder.popupmenu_scrollbar()},
}))
wilder.set_option('renderer', wilder.renderer_mux({
  [':'] = wilder.popupmenu_renderer({
    highlighter = wilder.basic_highlighter(),
  }),
  ['/'] = wilder.wildmenu_renderer({
    highlighter = wilder.basic_highlighter(),
  }),
}))
