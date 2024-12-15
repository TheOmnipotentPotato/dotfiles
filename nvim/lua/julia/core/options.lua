local opt = vim.opt

opt.number = true
opt.autoindent = true
opt.shiftwidth = 4
opt.mouse = a
opt.wildmenu = true
opt.hidden = true
opt.spelllang = 'en_us'
opt.spell = true
opt.termguicolors = true


opt.clipboard:append("unnamedplus")

vim.cmd ("highlight SpellBad cterm=bold,undercurl gui=bold,undercurl guisp=Red")
vim.cmd.highlight({ "Error", "guibg=red" })
vim.cmd.highlight({ "link", "Warning", "Error" })
vim.cmd.colorscheme("catppuccin-frappe")
