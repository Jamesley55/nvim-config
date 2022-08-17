-- Material Theme config

vim.g.catppuccin_flavour= 'mocha'
local colors = require("catppuccin.palettes").get_palette() -- fetch colors from g:catppuccin_flavour palette
require("catppuccin").setup({
	dim_inactive = {
		enabled = true,
		shade = "dark",
		percentage = 0.15,
	},
	transparent_background = false,
	term_colors = true,
	compile = {
		enabled = false,
		path = vim.fn.stdpath "cache" .. "/catppuccin",
	},
	styles = {
		comments = { "italic" },
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
	},
	integrations = {
		treesitter = true,
		native_lsp = {
			enabled = true,
			virtual_text = {
				errors = { "italic" },
				hints = { "italic" },
				warnings = { "italic" },
				information = { "italic" },
			},
			underlines = {
				errors = { "underline" },
				hints = { "underline" },
				warnings = { "underline" },
				information = { "underline" },
			},
		},
		coc_nvim = false,
		lsp_trouble = false,
		cmp = true,
		lsp_saga = false,
		gitgutter = false,
		gitsigns = true,
		leap = false,
		telescope = true,
		nvimtree = {
			enabled = true,
			show_root = true,
			transparent_panel = false,
		},
		neotree = {
			enabled = false,
			show_root = true,
			transparent_panel = false,
		},
		dap = {
			enabled = false,
			enable_ui = false,
		},
		which_key = false,
		indent_blankline = {
			enabled = true,
			colored_indent_levels = false,
		},
		dashboard = true,
		neogit = false,
		vim_sneak = false,
		fern = false,
		barbar = false,
		bufferline = true,
		markdown = true,
		lightspeed = false,
		ts_rainbow = false,
		hop = false,
		notify = true,

		symbols_outline = true,
		mini = false,
		aerial = false,
		vimwiki = true,
		beacon = true,
		navic = false,
		overseer = false,
	},
	color_overrides = {},
	highlight_overrides = {},
    custom_highlights = {
        texCmd = { fg = colors.sky, italic = true },
        texCmdEnv = { fg = colors.sapphire, italic = true },
        texEnvArgName = { fg = colors.yellow, italic = true },
        texEnvOp = { fg = colors.text },
        texPartArgTitle = { fg = colors.sky },
        texCmdPart = { fg = colors.sapphire, italic = true }, 
        texCmdRef = { fg = colors.red, bold = true },
        texCmdHyperref =  { fg = colors.red, bold = true },
        texRefArg = { fg = colors.peach, italic = true },
        texDelim = { fg = colors.yellow },
        texFileArg = { fg = colors.text },
        texFileOpt = { fg = colors.text },
        texOpt = { fg = colors.text }
        }
})

vim.cmd [[colorscheme catppuccin]]
vim.cmd("highlight WinSeparator guifg=#c0bfbc")
