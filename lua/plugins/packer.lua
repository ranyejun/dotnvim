local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim"
  use "goolord/alpha-nvim"
  use "folke/which-key.nvim"
  use "numToStr/Comment.nvim"
  use "kyazdani42/nvim-web-devicons"
  use "kyazdani42/nvim-tree.lua"
  use "akinsho/bufferline.nvim"
  use "nvim-lualine/lualine.nvim"
  use "akinsho/toggleterm.nvim"
  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
  use "ahmedkhalf/project.nvim"
  use "nvim-lua/plenary.nvim"
  -- use "nvim-lua/popup.nvim" 
  -- use "moll/vim-bbye"
  -- use "lewis6991/impatient.nvim"
  -- use "lukas-reineke/indent-blankline.nvim"
  -- use "antoinemadec/FixCursorHold.nvim" -- This is needed to fix lsp doc highlight

  -- Colorschemes
  -- use "lunarvim/colorschemes" -- A bunch of colorschemes you can try out
  use "lunarvim/darkplus.nvim"

  -- filetype
  -- use "fladson/vim-kitty"
  -- use 'norcalli/nvim-terminal.lua'

  -- cmp plugins
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp-signature-help"

  -- rust plugins
  use 'simrat39/rust-tools.nvim'

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use "mfussenegger/nvim-jdtls"
  use "MunifTanjim/prettier.nvim"
  use "williamboman/mason.nvim" -- simple to use language server installer
  use "neovim/nvim-lspconfig"
  use "williamboman/mason-lspconfig.nvim" -- simple to use language server installer
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
  use "jayp0521/mason-null-ls.nvim"
  use({"ckipp01/stylua-nvim", run = "cargo install stylua"})

  -- DAP
  use "mfussenegger/nvim-dap"
  use "jayp0521/mason-nvim-dap.nvim"
  use "rcarriga/nvim-dap-ui"
  use "nvim-telescope/telescope-dap.nvim"
  use "theHamsta/nvim-dap-virtual-text"


  -- Telescope
  use "nvim-telescope/telescope.nvim"

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use "JoosepAlviste/nvim-ts-context-commentstring"

  -- quick fix
  use {'kevinhwang91/nvim-bqf'}

  -- Git
  use "lewis6991/gitsigns.nvim"

  -- Vista
  use "liuchengxu/vista.vim"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
