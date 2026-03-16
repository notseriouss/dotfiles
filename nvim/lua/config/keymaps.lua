-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.automatically
-- Add any additional keymaps here

-- special keys
vim.keymap.set({ "n", "v" }, ";", ":")
vim.keymap.set("", "<Tab>", "<Nop>") -- Will be handled in `plugins/completion.lua`



-- yank, paste
vim.keymap.set("x", "p", '"_dP')
vim.keymap.set("x", "P", '"_dp')

vim.keymap.set({ "n", "v" }, "x", '"_x')

vim.keymap.set("n", "dw", 'vb"_d')
vim.keymap.set("n", "cw", 'vb"_c')

-- search keys
vim.keymap.set("n", "=", "'Nn'[v:searchforward]", { expr = true })
vim.keymap.set("x", "=", "'Nn'[v:searchforward]", { expr = true })
vim.keymap.set("o", "=", "'Nn'[v:searchforward]", { expr = true })
vim.keymap.set("n", "-", "'nN'[v:searchforward]", { expr = true })
vim.keymap.set("x", "-", "'nN'[v:searchforward]", { expr = true })
vim.keymap.set("o", "-", "'nN'[v:searchforward]", { expr = true })


-- other keys
--vim.keymap.set("n", "<C-S-M-s>", ":up<CR>", { silent = true })
--vim.keymap.set("i", "<C-S-M-s>", "<Esc>:up<CR>a", { silent = true })
--vim.keymap.set("v", "<C-S-M-s>", "<Esc>:up<CR>", { silent = true })

vim.keymap.set("", "<C-a>", "ggVG$")
vim.keymap.set({ "i", "v" }, "<C-a>", "<Esc>ggVG$")

--vim.keymap.set("n", "<leader>`", function() require("lazy").profile() end)
