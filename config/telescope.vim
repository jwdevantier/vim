" DEPS
" Plug 'nvim-lua/popup.nvim'
" Plug 'nvim-lua/plenary.nvim'

" PKG
" Plug 'nvim-telescope/telescope.nvim'
"

" fg requires ripgrep, ff requires fd (fd-find)
" $ sudo apt install ripgrep fd-find
" 
" Be sure to add `alias fd=fdfind` to your shell init file
"
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
