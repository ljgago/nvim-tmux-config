# My neovim and tmux config

## Install 

```
cd ~/.config
git clone https://github.com/ljgago/nvim-tmux-config nvim
```

### Vim-Plug

```
# Neovim (~/.local/share/nvim/site/autoload)
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### tmux config and theme

Theme based on https://github.com/odedlaz/tmux-onedark-theme

```
cp tmux.conf ~/.tmux.conf
cp -r tmux ~/.tmux
```
