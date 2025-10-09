return {
    "lervag/vimtex",
    ft = { "tex", "latex" },
    config = function()
        vim.g.vimtex_compiler_method = "latexmk"
        vim.g.vimtex_compiler_latexmk = {
            build_dir = "",
            continuous = 1,
            executable = "latexmk",
            options = { "-pdf", "-interaction=nonstopmode", "-synctex=1" },
        }

        vim.g.vimtex_view_method = "zathura"
        vim.g.vimtex_view_general_options = "-reuse-instance"

        vim.g.vimtex_quickfix_mode = 0
        vim.g.vimtex_compiler_callback_enabled = 0

	vim.api.nvim_create_autocmd("User", {
            pattern = "VimtexEventCompileSuccess",
            callback = function()
                vim.notify("VimTeX: Compilation completed successfully!", vim.log.levels.INFO)
            end,
        })

        vim.api.nvim_create_autocmd("User", {
            pattern = "VimtexEventCompileFailed",
            callback = function()
                vim.notify("VimTeX: Compilation failed!", vim.log.levels.ERROR)
            end,
        })
    end,
}
