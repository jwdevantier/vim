

## Installing Neovim

Be sure to get Neovim 0.5+.

```
$ sudo apt remove neovim
# if you already have a snap installed, use 'refresh' instead of 'install'
$ sudo snap install nvim --edge --classic
```

### Install plugin requirements
Some plugins may have additional requirements, read the header of each file in `config` for details.

Also, consult the output of `:checkhealth`

Specifically, read
* `config/telescope.vim`

