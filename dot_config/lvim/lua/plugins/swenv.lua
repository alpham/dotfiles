return {
  'AckslD/swenv.nvim',
  setup = {
    post_set_env = function()
      vim.cmd("LspRestart")
    end,
  }
}
