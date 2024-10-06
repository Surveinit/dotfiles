-- Inside your LazyVim plugin spec file (e.g., plugins.lua)

return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",     -- Use the latest version
    config = function()
      local status_ok, toggleterm = pcall(require, "toggleterm")
      if not status_ok then
        return
      end

      toggleterm.setup({
        size = 2,
        open_mapping = [[<c-,>]],
        hide_numbers = true,
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = 2,
        start_in_insert = true,
        insert_mappings = true,
        persist_size = true,
        direction = "float",
        close_on_exit = true,
        shell = vim.o.shell,
        float_opts = {
          width = 80,
          height = 26,
          border = "curved",
          winblend = 0,
          highlights = {
            border = "Normal",
            background = "Normal",
          },
        },
      })
    end
  }
}

