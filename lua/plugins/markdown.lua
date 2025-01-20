return {
    {
        "yelog/marklive.nvim",
        dependencies = { 'nvim-treesitter/nvim-treesitter' },
        lazy = true,
        ft = "markdown",
        opts = {}
    },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
    },
}
