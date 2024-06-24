-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--

vim.opt.colorcolumn = '80'      -- Line lenght marker at 80 columns
vim.opt.linebreak = true        -- Wrap on word boundary
vim.opt.cursorcolumn = true
vim.opt.completeopt="menuone,noinsert,noselect"
vim.opt.rtp:append('/opt/homebrew/opt/fzf')
--  set rtp+=/opt/homebrew/opt/fzf
lvim.transparent_window = true
local js_based_languages = {
  "typescript",
  "javascript",
  "typescriptreact",
  "javascriptreact",
  "vue",
}

lvim.plugins = {
  { import = 'plugins' },
  -- 'mg979/vim-visual-multi',
  
  {
    "microsoft/vscode-js-debug",
    -- After install, build it and rename the dist directory to out
    build = "npm install --legacy-peer-deps --no-save && npx gulp vsDebugServerBundle && rm -rf out && mv dist out",
    version = "1.*",
  },
  {
    "mxsdev/nvim-dap-vscode-js",
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require("dap-vscode-js").setup({
        -- Path of node executable. Defaults to $NODE_PATH, and then "node"
        -- node_path = "node",

        -- Path to vscode-js-debug installation.
        -- debugger_path = vim.fn.resolve(vim.fn.stdpath("data") .. "/lazy/vscode-js-debug"),
        debugger_path = "/Users/magdy/.local/share/lunarvim/site/pack/lazy/opt/vscode-js-debug",

        -- Command to use to launch the debug server. Takes precedence over "node_path" and "debugger_path"
        -- debugger_cmd = { "js-debug-adapter" },

        -- which adapters to register in nvim-dap
        adapters = {
          "chrome",
          "pwa-node",
          "pwa-chrome",
          "pwa-msedge",
          "pwa-extensionHost",
          "node-terminal",
        },

        -- Path for file logging
        -- log_file_path = "(stdpath cache)/dap_vscode_js.log",

        -- Logging level for output to file. Set to false to disable logging.
        -- log_file_level = false,

        -- Logging level for output to console. Set to false to disable console output.
        -- log_console_level = vim.log.levels.ERROR,
      })
    end,
  },
  { 
    "nvim-telescope/telescope.nvim",
      dependencies = {
        { "nvim-telescope/telescope-live-grep-args.nvim" },
      },
  },
  "mfussenegger/nvim-jdtls",
  {
    "iamcco/markdown-preview.nvim",
    build = function() vim.fn["mkdp#util#install"]() end,
  },
  {
    'nvim-java/nvim-java',
    dependencies = {
      'nvim-java/lua-async-await',
      'nvim-java/nvim-java-core',
      'nvim-java/nvim-java-test',
      'nvim-java/nvim-java-dap',
      'MunifTanjim/nui.nvim',
      'neovim/nvim-lspconfig',
      'mfussenegger/nvim-dap',
      {
        'williamboman/mason.nvim',
        opts = {
          registries = {
            'github:nvim-java/mason-registry',
            'github:mason-org/mason-registry',
          },
        },
      }
    },
  },
  {
    "f-person/git-blame.nvim",
    event = "BufRead",
    config = function()
      vim.cmd "highlight default link gitblame SpecialComment"
      require("gitblame").setup { enabled = false }
    end,
  },
  {
    "sindrets/diffview.nvim",
    event = "BufRead",
  },
  {
    "rmagatti/goto-preview",
    config = function()
      require('goto-preview').setup {
        width = 120; -- Width of the floating window
        height = 25; -- Height of the floating window
        default_mappings = true; -- Bind default mappings
        debug = false; -- Print debug information
        opacity = 50; -- 0-100 opacity level of the floating window where 100 is fully transparent.
        post_open_hook = nil -- A function taking two arguments, a buffer and a window to be ran as a hook.
        -- You can use "default_mappings = true" setup option
        -- Or explicitly set keybindings
        -- vim.cmd("nnoremap gpd <cmd>lua require('goto-preview').goto_preview_definition()<CR>")
        -- vim.cmd("nnoremap gpi <cmd>lua require('goto-preview').goto_preview_implementation()<CR>")
        -- vim.cmd("nnoremap gP <cmd>lua require('goto-preview').close_all_win()<CR>")
      }
    end
  },
  {
    'alexghergh/nvim-tmux-navigation', config = function()
      require'nvim-tmux-navigation'.setup {
          disable_when_zoomed = true, -- defaults to false
          keybindings = {
              left = "<C-h>",
              down = "<C-j>",
              up = "<C-k>",
              right = "<C-l>",
              last_active = "<C-\\>",
              next = "<C-Space>",
          }
      }
    end
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      -- "rcarriga/nvim-notify",
    }
  }

}


-- require('java').setup()

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" })
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "hydra_lsp" })
require("user.springboot-gradle")
require("user.js-dap")
require("user.lualine")
vim.opt.conceallevel = 1



require("catppuccin").setup({
    flavour = "macchiato", -- latte, frappe, macchiato, mocha
    -- flavour = "auto", -- will respect terminal's background
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
    },
    color_overrides = {},
    custom_highlights = {},
    default_integrations = true,
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = true,
        mini = {
            enabled = true,
            indentscope_color = "",
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
  })

lvim.colorscheme = "catppuccin"
require("user.ls_emmet")

require("telescope").load_extension("live_grep_args")
lvim.builtin.telescope.theme = ""
lvim.builtin.which_key.mappings.s.t = {
  require('telescope').extensions.live_grep_args.live_grep_args, "Live grep args",
}

require("noice").setup({
  lsp = {
    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
    },
  },
  -- you can enable a preset for easier configuration
  presets = {
    bottom_search = true, -- use a classic bottom cmdline for search
    command_palette = true, -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = false, -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = false, -- add a border to hover docs and signature help
  },
})
