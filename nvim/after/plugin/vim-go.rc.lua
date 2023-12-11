--- https://github.com/fatih/vim-go/blob/master/doc/vim-go.txt
vim.g.go_doc_popup_window = 1
vim.g.go_highlight_functions = 1
vim.g.go_highlight_function_calls = 1
vim.g.go_highlight_fields = 0
vim.g.go_highlight_types = 1

--- https://www.ditig.com/256-colors-cheat-sheet
--- run 'sy list' to list all possible syntax highligtings
vim.cmd[[highlight goFunction ctermfg=White guifg=LightCyan3]]
vim.cmd[[highlight goFunctionCall ctermfg=White guifg=LightCyan3]]
vim.cmd[[highlight goString ctermfg=White guifg=SpringGreen4]]
