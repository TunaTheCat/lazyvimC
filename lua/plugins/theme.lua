-- Default options:

return {
  {
    -- add gruvbox
    { "ellisonleao/gruvbox.nvim" },

    { "shaunsingh/nord.nvim" },
    { "savq/melange-nvim" },
    { "scottmckendry/cyberdream.nvim", lazy = false, priority = 1000 },
    {
      "rebelot/kanagawa.nvim",
      lazy = false,
      priority = 1000,
      config = function()
        require("kanagawa").setup({
          compile = false, -- enable compiling the colorscheme
          undercurl = true, -- enable undercurls
          commentStyle = { italic = true },
          functionStyle = {},
          keywordStyle = { italic = true },
          statementStyle = { bold = true },
          typeStyle = {},
          transparent = false, -- do not set background color
          dimInactive = false, -- dim inactive window `:h hl-NormalNC`
          terminalColors = true, -- define vim.g.terminal_color_{0,17}
          colors = { -- add/modify theme and palette colors
            palette = {},
            theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
          },
          overrides = function(colors) -- add/modify highlights
            return {}
          end,
          theme = "dragon", -- Load "wave" theme when 'background' option is not set
          background = { -- map the value of 'background' option to a theme
            dark = "dragon", -- try "dragon" !
            light = "lotus",
          },
        })
        -- vim.cmd("colorscheme kanagawa")
      end,
    },
    {
      "0xstepit/flow.nvim",
      lazy = false,
      priority = 1000,
      opts = {},
      config = function()
        require("flow").setup({
          transparent = true, -- Set transparent background.
          fluo_color = "pink", --  Fluo color: pink, yellow, orange, or green.
          mode = "normal", -- Intensity of the palette: normal, bright, desaturate, or dark. Notice that dark is ugly!
          aggressive_spell = false, -- Display colors for spell check.
        })
      end,
    },

    -- {
    --   "AlexvZyl/nordic.nvim",
    --   lazy = false,
    --   priority = 1000,
    --   config = function()
    --     require("nordic").load()
    --   end,
    -- },
    -- Configure LazyVim to load gruvbox
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "flow",
      },
    },
  },
}
