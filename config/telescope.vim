" DEPS
" Plug 'nvim-lua/popup.nvim'
" Plug 'nvim-lua/plenary.nvim'

" PKG
" Plug 'nvim-telescope/telescope.nvim'
"

" ! fg requires ripgrep (binary 'rg') installed on system

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
