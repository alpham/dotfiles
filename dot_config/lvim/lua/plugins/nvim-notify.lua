return {
  "rcarriga/nvim-notify",
  opts = {
    fps = 144,
    top_down = false,
    on_open = function(win)
      local config = vim.api.nvim_win_get_config(win)
      config.border = "single"
      vim.api.nvim_win_set_config(win, config)
    end,
  },
}
