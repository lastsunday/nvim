return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, "encoding")
      table.insert(opts.sections.lualine_x, "fileformat")
      table.insert(opts.sections.lualine_y, "lsp_status")
    end,
  },
}
