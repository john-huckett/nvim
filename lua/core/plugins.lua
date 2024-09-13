require("lazy").setup({
    "Yggdroot/indentLine",
    "tpope/vim-commentary",
    -- "mattn/emmet-vim",
    "nvim-tree/nvim-tree.lua",
    "nvim-tree/nvim-web-devicons",
    "ellisonleao/gruvbox.nvim",
    "challenger-deep-theme/vim",
    "flazz/vim-colorschemes",
    "yorickpeterse/happy_hacking.vim",
    "nvim-lualine/lualine.nvim",
    "nvim-treesitter/nvim-treesitter",
    "rhysd/vim-clang-format",
    "vim-test/vim-test",
    -- "lewis6991/gitsigns.nvim",
    -- "preservim/vimux",
    -- "christoomey/vim-tmux-navigator",
    -- "tpope/vim-fugitive",
    -- "tpope/vim-surround",
    "stevearc/oil.nvim",
    -- completion
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",
    -- "github/copilot.vim",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "nvim-telescope/telescope.nvim",
    -- "m4xshen/autoclose.nvim",
    'machakann/vim-highlightedyank',
    'dhruvasagar/vim-table-mode',
    'ap/vim-css-color',
    'ap/vim-buftabline',
    "karb94/neoscroll.nvim",
{
    "toppair/peek.nvim",
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",
    config = function()
        require("peek").setup()
        vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
        vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
    end,
},

})


