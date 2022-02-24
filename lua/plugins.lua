return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin

    -- lspsaga
    use {'tami5/lspsaga.nvim'}


    -- tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        config = function() require('tree-config') end
    }

    -- comment
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('comment-config')
        end
    }


    -- material colorscheme
    use {'marko-cerovac/material.nvim',config = function() require('material-config') end}

    -- molokai colorscheme
    use {'tanvirtin/monokai.nvim',config = function() require('monokai-config') end}


    -- auto pairs
    use {'windwp/nvim-autopairs',config = function () require('autopair-config') end}

    -- bufferline
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons',config = function() require('bufferline-config') end}

    -- windline
    use {'windwp/windline.nvim',config = function() require('windline-config') end}

    --rainbow
    use {'p00f/nvim-ts-rainbow',config = function() require('rainbow-config') end}

    --markdown preview
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() require('markdown-config') end, ft = { "markdown" }, })
    --markdown syntax
    use 'preservim/vim-markdown'



    -- treesitter
    use {'nvim-treesitter/nvim-treesitter',
    config = function() require('treesitter-config') end
}



  end)

