return {
  "mfussenegger/nvim-dap",
  dependencies = {
    {
      "mxsdev/nvim-dap-vscode-js",
      opts = {
        debugger_path = string.format("%s/vscode-js-debug/", lazy_dir),
        adapters = { "pwa-node" }
      },
    },
    "theHamsta/nvim-dap-virtual-text",
    "rcarriga/nvim-dap-ui",
    {
      "microsoft/vscode-js-debug",
      build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out"
    }
  },
  config = function()
    require('user.js-dap')
  end
}
