-- name:     Catppuccin Macchiato 🌺
-- author:   Pocco81 (https://github.com/Pocco81)
-- license:  MIT
-- upstream: https://github.com/catppuccin/kitty/blob/main/themes/macchiato.conf
-- blurb:    Soothing pastel theme for the high-spirited!

return {
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin",
		},
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = {
			-- flavour = "auto", -- latte, frappe, macchiato, mocha
			flavour = "macchiato", -- 默认使用macchiato
			-- 关闭背景色，以实现透明效果
			transparent_background = true,
		},
	},
}
