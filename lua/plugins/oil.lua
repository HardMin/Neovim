return {
  "stevearc/oil.nvim",

  keys = {
    { "-", "<CMD>Oil<CR>", desc = "Open Oil (parent dir)" },
    { "<leader>of", "<CMD>Oil --float<CR>", desc = "Open Oil (floating)" },
  },

  opts = {

    keymaps = {},

    float = {
      -- Padding around the floating window
      padding = 2,
      max_width = 100,
      max_height = 30,
      border = "rounded",
      win_options = {
        winblend = 0,
      },
      -- preview_split: Split direction: "auto", "left", "right", "above", "below".
      preview_split = "auto",
      -- This is the config that will be passed to nvim_open_win.
      -- Change values here to customize the layout
      override = function(conf)
        return conf
      end,
    },
  },
}
