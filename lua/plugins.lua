return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- LSP
    use {'neovim/nvim-lspconfig',config = function() require('plugin-config/lsp-config') end}
    use 'hrsh7th/nvim-cmp'
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
        config = function() require('plugin-config/tree-config') end
    }

    -- comment
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('plugin-config/comment-config')
        end
    }


    -- material colorscheme
    use {'marko-cerovac/material.nvim',config = function() require('plugin-config/material-config') end}

    -- molokai colorscheme
    use {'tanvirtin/monokai.nvim',config = function() require('plugin-config/monokai-config') end}


    -- auto pairs
    use {'windwp/nvim-autopairs',config = function () require('plugin-config/autopair-config') end}

    -- bufferline
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons',config = function() require('plugin-config/bufferline-config') end}

    -- windline
    use {'windwp/windline.nvim',config = function() require('plugin-config/windline-config') end}

    --rainbow
    use {'p00f/nvim-ts-rainbow',config = function() require('plugin-config/rainbow-config') end}

    --markdown preview
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() require('plugin-config/markdown-config') end, ft = { "markdown" }, })
    --markdown syntax
    use 'preservim/vim-markdown'



    -- treesitter
    use {'nvim-treesitter/nvim-treesitter',
    config = function() require('plugin-config/treesitter-config') end
}

-- fuzzy finder telescope
use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'},{'BurntSushi/ripgrep'},
},
config = function () require('plugin-config/telescope-config') end
}
-- lazy git
use 'kdheepak/lazygit.nvim'

-- which key
use {
    "folke/which-key.nvim",
    config = function()
        require("plugin-config/which-key-config")  end
    }

    -- terminal integration
    use 'nikvdp/neomux'

    -- lsp kind
    use {'onsails/lspkind-nvim'}

    -- lsp color
    use {'folke/lsp-colors.nvim',config = function() require('plugin-config/lspcolor-config') end}

    -- show start time
    use 'dstein64/vim-startuptime'

    -- indent line
    use {"lukas-reineke/indent-blankline.nvim",config = function()require('plugin-config/indent-line-config') end}

end)

