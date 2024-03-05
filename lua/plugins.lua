
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

--appearence

use 'nvim-tree/nvim-tree.lua'           
use 'nvim-tree/nvim-web-devicons'       
use 'morhetz/gruvbox'
use "rebelot/kanagawa.nvim"
use 'Mofiqul/dracula.nvim'
use {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}
use {
  "loctvl842/monokai-pro.nvim",
  config = function()
    require("monokai-pro").setup()
  end
}
use 'nvim-tree/nvim-web-devicons'
use { "catppuccin/nvim", as = "catppuccin" }
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}




--auto completion--------------------------------------------------------------------------
use {
  'hrsh7th/cmp-nvim-lsp',
  'L3MON4D3/LuaSnip',               
  'saadparwaiz1/cmp_luasnip',
  "rafamadriz/friendly-snippets",
  "williamboman/mason.nvim",
  "neovim/nvim-lspconfig",
  "williamboman/mason-lspconfig.nvim",
  "nvimdev/lspsaga.nvim",
  'hrsh7th/nvim-cmp'                  

}
use 'leafgarland/typescript-vim'
use('jose-elias-alvarez/null-ls.nvim')
use('MunifTanjim/prettier.nvim')
use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}

--core------------------------------------------------------------------------------------

use {
  'VonHeikemen/fine-cmdline.nvim',
  requires = {
    {'MunifTanjim/nui.nvim'}
  }
}
use 'mfussenegger/nvim-dap'
use 'rcarriga/nvim-dap-ui'
use {
    'akinsho/flutter-tools.nvim',
    requires = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim', 
    },
}


use({
	"Pocco81/auto-save.nvim",
	config = function()
		 require("auto-save").setup {
			-- your config goes here
			-- or just leave it empty :)
		 }
	end,
})


use {
  'nvim-telescope/telescope.nvim', tag = '0.1.4',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

use 'rcarriga/nvim-notify'



use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
--use 'romgrk/barbar.nvim'


--
-------------Packer----------------------------------------------------
--
use {
  "startup-nvim/startup.nvim",
  requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
  config = function()
    require"startup".setup()
  end
}

--
  if packer_bootstrap then
    require('packer').sync()
  end
end)
