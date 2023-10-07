lvim.plugins = {
  -- :shrug:
  'yazeed1s/minimal.nvim',
  -- manage virtualenvs
  'AckslD/swenv.nvim',
  -- Traditional git experience
  'tpope/vim-fugitive',
  -- DB connection
  'kristijanhusak/vim-dadbod-ui',
  dependencies = {
    { 'tpope/vim-dadbod',                     lazy = true },
    { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
  },
  cmd = {
    'DBUI',
    'DBUIToggle',
    'DBUIAddConnection',
    'DBUIFindBuffer',
  },
  -- vim-go
  'fatih/vim-go',
  -- LSP Signature in function
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require "lsp_signature".on_attach() end,
  }
}

lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "go",
  "json",
  "lua",
  "python",
  "yaml"
}

lvim.colorscheme = 'minimal-base16'
vim.opt.guicursor = "a:ver100-blinkon0"
lvim.format_on_save.enabled = true

local autocmd = vim.api.nvim_create_autocmd
--
-- Make comments more readable
autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.cmd 'highlight Comment guifg=darkyellow'
  end,
})

--
-- Remove whitespace on save
autocmd('BufWritePre', {
  pattern = '',
  command = ":%s/\\s\\+$//e"
})
