return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "mini.icons" },
    config = function()
      require("lualine").setup({
        options = {
          icons_enabled = true,
          theme = "auto",
          --  component_separators = { left = '|', right = '|' },
          --  section_separators = { left = '', right = '' },
          globalstatus = true,
        },
      })
    end,
  },
}
