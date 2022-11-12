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
- powerline-go:  `go install github.com/justjanne/powerline-go@latest`
- powerline fonts
```
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
```
- choose `Source Code Pro for Powerline`