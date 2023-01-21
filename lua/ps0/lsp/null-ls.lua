local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end


null_ls.setup({
    sources = {
        null_ls.builtins.formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }),
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.formatting.eslint_d,
        null_ls.builtins.formatting.black,
        -- null_ls.builtins.completion.spell,
    },
})-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
