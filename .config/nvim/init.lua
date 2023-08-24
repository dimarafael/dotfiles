local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
	{'folke/tokyonight.nvim'},
	{'nvim-lualine/lualine.nvim'},
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{'lukas-reineke/indent-blankline.nvim'},
	{'numToStr/Comment.nvim'},
})

vim.opt.showmode = false
require('lualine').setup({
	options = {
		icons_enabled = false,
		section_separators = '',
		component_separators = '|'
	}
})

require'nvim-treesitter.configs'.setup {
	ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "cpp", "make" },
	highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

require("indent_blankline").setup({
	show_current_context = false,
	-- show_current_context_start = true,
	use_treesitter = true,
	show_trailing_blankline_indent = false,
	-- show_first_indent_level = false,
	-- char = "",
	-- context_char = "│",
})

require('Comment').setup({})

vim.opt.termguicolors = true
vim.cmd.colorscheme('tokyonight-night')


vim.opt.number = true
vim.opt.cursorline = true

vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = false


