local status, telescope = pcall(require, "telescope")
if (not status) then return end

local builtin = require('telescope.builtin')

telescope.setup({
  defaults = {
    preview = {
      -- @refer https://github.com/nvim-telescope/telescope.nvim/issues/1379
   		treesitter = false,
   	},
    sorting_strategy = "ascending",
    layout_config = { height = 0.9 },
    file_ignore_patterns = {
      "^.git/",
      "^node_modules/",
      "%.jpg",
      "%.jpeg",
      "%.png",
      "%.pdf",
      "%.gif",
      "%.svg",
    },
    wrap_results = true,
  },
  extensions = {
    coc = {
      prefer_locations = false,   -- always use Telescope locations to preview definitions/declarations/implementations etc
    },
  },
})

-- telescope.load_extension("frecency") --frecency search
telescope.load_extension("coc")      -- coc integration

-- file search
vim.keymap.set('n', '<leader>f',
  function()
    builtin.find_files({
      no_ignore = false,
      hidden = true
    })
  end)

-- -- Grep
vim.keymap.set('n', '<leader>r',
  function()
    builtin.live_grep({
      no_ignore = false,
      hidden = true
    })
  end)

-- buffer-fuzzy-find
vim.keymap.set('n', '<leader>b',
  function()
    builtin.current_buffer_fuzzy_find({
      no_ignore = false,
      hidden = true
    })
  end)

---- Telescope-coc
-- jump definition
vim.keymap.set("n", "gd", "<cmd>Telescope coc definitions<cr>", { noremap = true, silent = true })
-- jump type definition
vim.keymap.set("n", "gy", "<cmd>Telescope coc type_definitions<cr>", { noremap = true, silent = true })
-- diagnostics
vim.keymap.set("n", "<leader>a", "<cmd>Telescope coc diagnostics<cr>", {noremap = true, silent = true })
-- frecency search
vim.keymap.set("n", "<leader>l", "<Cmd>lua require('telescope').extensions.frecency.frecency()<CR>", {noremap = true, silent = true})
