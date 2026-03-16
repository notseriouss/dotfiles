-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here


-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 0
vim.g.autoformat = false

-- Editing
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.clipboard = "unnamedplus"
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.signcolumn = "yes"

vim.opt.wrap = false
vim.opt.linebreak = true
vim.opt.showbreak = "↳"
vim.opt.whichwrap = "h,l,<,>"

vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 5
vim.opt.virtualedit = "block"

-- Searching
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.infercase = true
vim.opt.hlsearch = false

-- Indent
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true

-- Folding
--vim.opt.foldlevel = 99
--vim.opt.foldmethod = "expr"
--vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

-- UI
--vim.opt.winblend = 0
--vim.opt.pumblend = 0
vim.opt.pumheight = 15
vim.opt.cursorline = false

vim.opt.showmode = false
--vim.opt.showcmd = false
--vim.opt.cmdheight = 0
--vim.opt.laststatus = 3

--vim.opt.ruler = false
--vim.opt.signcolumn = "yes"
--vim.opt.shortmess = "fimnxsTAIcF"

-- Cache/Log file
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand("$HOME/.cache/nvim/undo")
vim.opt.backupdir = vim.fn.expand("$HOME/.cache/nvim/backup")
vim.opt.viewdir = vim.fn.expand("$HOME/.cache/nvim/view")
vim.lsp.log.set_level("off")

-- Rendering
vim.opt.termguicolors = true


-- Misc
vim.opt.history = 1000
vim.opt.wildignorecase = true
vim.opt.ttimeoutlen = 10

vim.g.loaded_gzip = 1
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_matchparen = 1
vim.g.loaded_tar = 1
vim.g.loaded_tarPlugin = 1
vim.g.loaded_zip = 1
vim.g.loaded_zipPlugin = 1


vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "󰌵", texthl = "DiagnosticSignHint" })

--vim.diagnostic.config {
--  virtual_text = false,
--  float = { header = "", prefix = "", focusable = false },
--  update_in_insert = true,
--  severity_sort = true,
--}


