function ColorMyGruber()
    vim.opt.background = "dark"
    vim.opt.termguicolors = true
    vim.cmd.colorscheme("gruber-darker")

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{ "blazkowolf/gruber-darker.nvim", config = ColorMyGruber },
	{ "rose-pine/neovim", name = "rose-pine" },
	{ "NLKNguyen/papercolor-theme", name = "papercolor" },
	{ "sindresorhus/focus" },
	{ "AlessandroYorba/Despacio" },
	{ "huyvohcmc/atlas.vim" },
	{ "plan9-for-vimspace/acme-colors" },
	{ "aditya-azad/candle-grey" },
	{ "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...}
}
