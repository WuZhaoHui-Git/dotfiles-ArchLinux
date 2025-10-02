-- name:     Catppuccin Mocha 🌿
-- author:   Pocco81 (https://github.com/Pocco81)
-- license:  MIT
-- upstream: https://github.com/catppuccin/kitty/blob/main/themes/mocha.conf
-- blurb:    Soothing pastel theme for the high-spirited!


return {
	{
		"https://gh-proxy.com/https://github.com/catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = {
			-- flavour = "auto", -- latte, frappe, macchiato, mocha
			flavour = "mocha", -- 默认使用mocha
			-- 关闭背景色，以实现透明效果
			transparent_background = true,
			-- 自定义高亮颜色
			custom_highlights = function(colors)
				-- stylua: ignore
				return {
					LineNr = { fg = colors.surface2 },
					Visual = { bg = colors.overlay0 },
					Search = { bg = colors.surface2 },
					IncSearch = { bg = colors.mauve },
					CurSearch = { bg = colors.mauve },
					MatchParen = { bg = colors.mauve, fg = colors.base, bold = true },
				}
			end,
			-- Catppuccin 为 Neovim 生态系统中的其他插件提供主题支持，并通过集成扩展了 Neovim 功能。
			-- 如需更多插件集成,请查看catppuccin集成 (https://github.com/catppuccin/nvim#integrations)
			integrations = {
				barbar = true,
				blink_cmp = true,
				gitsigns = true,
				mason = true,
				noice = true,
				nvimtree = true,
				rainbow_delimiters = true,
				snacks = {
					enabled = true,
					indent_scope_color = "flamingo", -- catppuccin color (eg. `lavender`) Default: text
				},
				which_key = true,
				flash = true,
				lsp_trouble = true,
			},
		},
		config = function(_, opts)
			require("catppuccin").setup(opts) -- 插件配置

			vim.cmd.colorscheme("catppuccin") -- 应用主题
		end,
	},
}
