

## Installing Neovim

Be sure to get Neovim 0.5+.

### Ubuntu
```
$ sudo apt remove neovim
# if you already have a snap installed, use 'refresh' instead of 'install'
$ sudo snap install nvim --edge --classic
```

### MacOS (brew)

(You may have to unlink an existing copy of luajit)
```
# might be necessary
$ brew unlink luajit

# install very latest
$ brew install --HEAD luajit
$ brew install --HEAD neovim
```

## Install plugin requirements
Some plugins may have additional requirements, read the header of each file in `config` for details.

Also, consult the output of `:checkhealth`

Specifically, read * `config/telescope.vim`

## Replace/obscure vim

In your $HOME/.zshrc or $HOME/.bashrc, near the top of the file, add:
```sh
alias vim=nvim
```
