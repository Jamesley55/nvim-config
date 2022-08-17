-- include treesitter and its config
require("nvim-treesitter.install").compilers = {"gcc", "clang", "cc", "cl", "zig", "x86_64-apple-darwin13.4.0-clang"}
require('nvim-treesitter.configs').setup{
    
ensure_installed = {"c","cpp", "python", "lua", "typescript",
                    "regex", "bash", "cmake", "css", "javascript",
                    "html", "comment", "java", "rust", "go","markdown",
                    "make", "json", "vim"}, -- one of "all", "maintained" 
highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = false,
  },

  rainbow = {
    enable = true,
    -- disable = { 'jsx', 'cpp' },
    extended_mode = true,
    max_file_lines = nil,

    colors = {
    "DodgerBlue",
    "#68a0b0",
    "#946EaD",
    "Gold",
    "Orchid",
    "Cornsilk",
    "#c7aA6D",
    }, 
    -- termcolors = {}
  },
  indent = {enable = true, diable = {"yaml"}},

  autotag = {
    enable = true,
  },

  refactor = {
    smart_rename = {
      enable = true,
      keymaps = {
        smart_rename = 'grr',
      },
    },
    navigation = {
      enable = true,
      keymaps = {
        goto_definition = 'gnd',
        list_definitions = 'gnD',
        list_definitions_toc = 'gO',
        goto_next_usage = '<A-]>',
        goto_previous_usage = '<A-[>',
      },
    },
  },
}
