# dotfiles
## vim
### vim plug
https://github.com/junegunn/vim-plug
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
### wombat256
https://github.com/michalbachowski/vim-wombat256mod
```
curl -fLo ~/.vim/colors/wombat256mod.vim --create-dirs https://raw.githubusercontent.com/michalbachowski/vim-wombat256mod/master/colors/wombat256mod.vim
```
### nvm
https://github.com/nvm-sh/nvm
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```

## powerline-go
- prerequisite: install go
- `ln -s /usr/bin/go /usr/local/go/bin/go` if necessary.
- powerline-go:  `go install github.com/justjanne/powerline-go@latest`

## fonts
https://github.com/ryanoasis/nerd-fonts
- install `Hack Nerd Font`

## tmux
- tmux session uses login shell thus `.bash_profile` is sourced instead of `.bash_profile`. https://unix.stackexchange.com/questions/320465/new-tmux-sessions-do-not-source-bashrc-file
- `tmux source-file .tmux.conf
- install copy-and-paste tool
  - linux: `sudo apt install -y xclip`

## vim coc
```
:CocList extension
:CocConfig
:CocInstall <extension>
```
- config: https://github.com/neoclide/coc.nvim/wiki/Using-the-configuration-file

### language server
https://github.com/neoclide/coc.nvim/wiki/Language-servers#go
```
:CocInstall coc-go
:CocInstall coc-rust-analyzer
:CocInstall coc-clangd
```
