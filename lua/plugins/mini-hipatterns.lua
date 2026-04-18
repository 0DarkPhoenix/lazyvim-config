-- This configuration doesn't properly work yet.
-- The issue is that default config of LazyVim is still used dispite it being overwritten here.
return {
  "nvim-mini/mini.hipatterns",
  version = "*",
  opts = function()
    local hi = require("mini.hipatterns")
    return {
      highlighters = {
        hex_color = hi.gen_highlighter.hex_color({
          style = "inline",
          inline_text = "■",
          priority = 3000,
        }),
      },
    }
  end,
}
