return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
	cmd = "TSUpdate",
		require'nvim-treesitter.configs'.setup {
			ensure_installed = "all",
			auto_install = true,
			highlight = { enable = true, },
			indent = { enable = true },
		}
	    end,
}

