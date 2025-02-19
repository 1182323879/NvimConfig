return {
	
	{
	    "iamcco/markdown-preview.nvim",
	    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	    ft =  "markdown" ,
	},

	{
	 "tenxsoydev/vim-markdown-checkswitch",
	  ft = "markdown",
		keys = { {"<leader>c" , "<cmd>CheckSwitch<CR>"} },
		config = function()
		vim.g.md_checkswitch_style = "cycle"
		end,
	},

	{
		"dhruvasagar/vim-table-mode",
	        ft = "markdown",
		config = function ()
			vim.g.table_mode_corner = '|'
		end
	}

}
