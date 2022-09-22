local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use {'neoclide/coc.nvim', branch = 'release'} -- completion
  use 'dense-analysis/ale'
end)

require'lspconfig'.rust_analyzer.setup{}
