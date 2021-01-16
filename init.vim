" load better defaults -- allows us to override settings later
runtime! vim-better-defaults.vim

" install vim plug if missing
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/bundle')
" colorscheme
Plug 'morhetz/gruvbox'
Plug 'overcache/NeoSolarized'
" better bottom bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'jiangmiao/auto-pairs'
" colorize hex codes 
Plug 'norcalli/nvim-colorizer.lua'

" snippet plugin
Plug 'sirver/ultisnips'

" fuzzy find plugin (and deps)
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" show suggestions after pressing leader key
Plug 'liuchengxu/vim-which-key'

" conqueror of completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" explicitly set python 3 provider
" this becomes useful when entering into virtualenvs where the neovim module
" is not available -- this way, plugins which rely python3 continue to work
let g:python3_host_prog = '/usr/bin/python'

"The meaning of each of these options can be found by running
" ':options' which lists all available options

" auto source local directory vimrc -- project-specific hacks
set exrc
" start scrolling up/down when cursor is on the `scrolloff`th line
set scrolloff=8

" setup leader keys and integrate with vim-which-key
let g:mapleader = "\<Space>"
let g:maplocalleader = ","
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey ','<CR>
set timeoutlen=300 " reduce time taken until help is shown

" ---- theming
" colorscheme gruvbox
" let g:airline_theme='gruvbox'
set termguicolors
colorscheme NeoSolarized
set background=light
let g:airline_theme='solarized'

" airline tweaks -- show buffer list
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'

source $HOME/.config/nvim/config/colorizer.vim
source $HOME/.config/nvim/config/ultisnips.vim
source $HOME/.config/nvim/config/telescope.vim
source $HOME/.config/nvim/config/coc.vim

" --------------- KEY BINDS ------------------------
"" previous buffer
nmap <leader>1 :bp<CR>
" next
nmap <leader>2 :bn<CR>
" close
"nmap <C-w> :bd<CR>
