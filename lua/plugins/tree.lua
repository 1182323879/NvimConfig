return {
    "nvim-neo-tree/neo-tree.nvim",
    --keys = { {"<leader>t" , "<cmd>Neotree toggle<cr>", desc = "NeoTree" }, },
    keys = { {"<leader>t" , "<cmd>Neotree toggle<cr>" } },
    config = function()
	    require("neo-tree").setup()
    end,
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
}
