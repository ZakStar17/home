local rt = require("rust-tools")
rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-x>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<C-s>", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
     settings = {
      ["rust-analyzer"] = {
        inlayHints = { locationLinks = false },
      },
    },
  },
})

require'lspconfig'.lua_ls.setup{} -- lua
require'lspconfig'.marksman.setup{}  -- markdown
require'lspconfig'.vimls.setup{}  -- vim
require'lspconfig'.yamlls.setup{}  -- yaml
require'lspconfig'.ccls.setup{}  -- c, c++

require'lspconfig'.pylsp.setup{
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = {'W391'},
          maxLineLength = 100
        },
        flake8 = {
            enabled = true
        },
        pyling = {
            enabled = true
        },
        rope_completio = {
            enabled = true
        }
      }
    }
  }
}
