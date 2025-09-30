-- init.lua (or lazy.lua)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)
vim.cmd("set colorcolumn=80")


require("lazy").setup({
  spec = {
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    { import = "lazyvim.plugins.extras.lang.clangd" },
    { import = "plugins"},
  },
  -- Configure Clangd LSP
  {
    import = "lazyvim.plugins.extras.lang.clangd",
    opts = function(_, opts)
      require("lspconfig").clangd.setup({
        args = { "--compile-commands-dir=./", "-I./src/asn" },
        root_dir = require("lspconfig.util").root_pattern(".git", "compile_commands.json", "compile_flags.txt"),
        filetypes = { "c", "cpp", "objc", "objcpp" },
      })
    end,
  },
  -- Configure Treesitter for C/C++
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = { "c", "cpp" }
      opts.highlight = { enable = true }
      opts.indent = { enable = true }
    end,
  },
})


vim.o.tabstop = 2 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 2 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 2 -- Number of spaces inserted when indenting

