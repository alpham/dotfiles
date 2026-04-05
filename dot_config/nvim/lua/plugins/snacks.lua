return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        header = [[
                                                      
          ██  ██  ████████  ████████  ██  ██  ██  ██  
          ██  ██  ██              ██  ██  ██          
          ██  ██  ██████████████████  ██  ██  ██████  
          ██  ██                      ██  ██  ██  ██  
          ██  ██  ██████  ██  ██████████  ██  ██████  
          ██  ██  ██                      ██      ██  
          ██  ██████████  ██  ██████  ██  ██████████  
          ██  ██          ██      ██      ██          
          ██████████  ██████  ██████  ██  ██  ██████  
              ██  ██  ██              ██  ██  ██  ██  
          ██  ██████  ██████  ██████████  ██  ██████  
          ██              ██              ██      ██  
          ██████████████████  ██████████████  ██████  
                                                      
        ]],
      },
    },
    picker = {
      -- your picker configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      sources = {
        explorer = {
          hidden = true,
          ignored = true,
          win = {
            list = {
              wo = {
                number = true,
                relativenumber = true,
              },
            },
          },
          layout = {
            layout = {
              position = "right",
            },
          },
        },
      },
    },
  },
}
