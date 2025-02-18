return {
--	{
--	    "yelog/marklive.nvim",
--	    dependencies = { 'nvim-treesitter/nvim-treesitter' },
--	    lazy = true,
--	    ft = "markdown",
--	    opts = {}
--	},
	{
  "yelog/marklive.nvim",
  event = "VeryLazy", -- 延迟加载
  config = function()
    local marklive = require("marklive")
    marklive.setup() -- 初始化插件

    -- 定义启用和禁用函数（假设存在）
    local enable = function() marklive.enable() end
    local disable = function() marklive.disable() end

    -- 根据当前模式初始化状态
    if vim.fn.mode() == "n" then
      enable()
    else
      disable()
    end

    -- 监听模式变化
    vim.api.nvim_create_autocmd("ModeChanged", {
      pattern = "*:*",
      callback = function(args)
        local new_mode = args.match:sub(1, 1) -- 提取新模式（n/i）
        if new_mode == "n" then
          disable()
        elseif new_mode == "i" then
          enable()
        end
      end
    })
  end
},
	
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
