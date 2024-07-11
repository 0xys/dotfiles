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
```sh
# mac
brew install font-hack-nerd-font

# arch
# https://aur.archlinux.org/packages?K=nerd-fonts-&outdated=off

# ubuntu
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh Hack
```

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

### git
```sh
open https://github.com/dandavison/delta/releases
# download latest version

cd ~/Downloads
tar -xzvf delta-0.17.0-x86_64-unknown-linux-gnu.tar.gz
cp ~/Downloads/delta-0.17.0-x86_64-unknown-linux-gnu/delta /usr/local/bin/
```

# tools
ripgrep: https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation
fzf: https://github.com/junegunn/fzf?tab=readme-ov-file#installation

# neovim
https://github.com/neovim/neovim/blob/master/INSTALL.md#appimage-universal-linux-package
```sh
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
```
```sh
mkdir -p /opt/nvim
mv nvim.appimage /opt/nvim/nvim
```
plugin
```
cp -r nvim ~/.config/
```
