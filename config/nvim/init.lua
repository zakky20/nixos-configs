require("core.options")
require("core.keymaps")
require("core.snippets")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	require("plugins.alpha"),
	require("plugins.colortheme"),
        require("plugins.lualine"),
        require("plugins.noice"),
	require("plugins.treesitter"),
	require("plugins.telescope"),
	require("plugins.autocompletion"),
	require("plugins.lsp"),
	require("plugins.gitsigns"),
	require("plugins.indent-blankline"),
	require("plugins.vimtex"),
	require("plugins.orgmode"),
	require("plugins.misc"),
	require("plugins.comment"),
})
