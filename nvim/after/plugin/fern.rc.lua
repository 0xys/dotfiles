vim.g["fern#renderer"] = "nvim-web-devicons"

vim.g["fern#default_hidden"]= 1

vim.cmd([[
augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END

]])


vim.keymap.set('n','<leader>n',':Fern . -drawer -toggle -width=48<CR>',{silent = true,noremap = true})
