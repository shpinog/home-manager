return require('packer').startup(function()
require('telescope').setup{}


 use { 'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim', 'nvim-treesitter/nvim-treesitter'} },
    config = function() require'telescope'.setup {} end, }    

 use { 'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end, }

require('Comment').setup()
 use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}

local lsp = require "lspconfig"
local coq = require "coq"

lsp.tsserver.setup{}
lsp.tsserver.setup(coq.lsp_ensure_capabilities{})
vim.cmd('COQnow -s')


  use {

    'wbthomason/packer.nvim',
    'LnL7/vim-nix',
    'neovim/nvim-lspconfig',
    'hrsh7th/nvim-cmp',
    'hrsh7th/vim-vsnip',
    'hrsh7th/cmp-nvim-lsp',
    'saadparwaiz1/cmp_luasnip',
    'L3MON4D3/LuaSnip',
    'williamboman/nvim-lsp-installer',
    'nvim-lualine/lualine.nvim',
    'kyazdani42/nvim-web-devicons',
    'akinsho/bufferline.nvim', tag = "*",
    'majutsushi/tagbar',
    'cohama/lexima.vim',  -- Закрывает автоматом скобки
    'mattn/emmet-vim', -- Обрамляет строку в теги по ctrl- y + ,A
    'ms-jpq/coq_nvim',

  }


vim.opt.termguicolors = true
require("bufferline").setup{}


end)

