return {
  "catgoose/nvim-colorizer.lua",
  event = "BufReadPre",
  opts = {
    options = {
      parsers = {
        css = true,
        css_fn = true,
        hex = {
          rrggbbaa = true, -- #RRGGBBAA (8-digit)
          hash_aarrggbb = true, -- #AARRGGBB (QML-style, alpha first)
          aarrggbb = true, -- 0xAARRGGBB
        },
        rgb = { enable = true }, -- rgb()/rgba() functions
        hsl = { enable = true }, -- hsl()/hsla() functions
        oklch = { enable = true }, -- oklch() function
        hwb = { enable = true }, -- hwb() function (CSS Color Level 4)
        lab = { enable = true }, -- lab() function (CIE Lab)
        lch = { enable = true }, -- lch() function (CIE LCH)
        css_color = { enable = true }, -- color() function (srgb, display-p3, a98-rgb, etc.)
        tailwind = {
          enable = true, -- parse Tailwind color names
          update_names = true, -- feed LSP colors back into name parser (requires both enable + lsp.enable)
          lsp = {
            enable = true, -- use Tailwind LSP documentColor
            disable_document_color = true, -- auto-disable vim.lsp.document_color on attach
          },
        },
      },
      display = {
        mode = "virtualtext",
        virtualtext = {
          char = "█",
          position = "before",
        },
      },
    },
  },
}
