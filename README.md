# My neovim config

To install
```bash
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}

# clone the repo
git clone https://github.com/boyohboyamibored/nvim-config ~/.config/nvim

# remove the old .git folder so you can add this config to your own repo
rm -rf ~/.config/nvim/.git

# start neovim wait for install then restart neovim
nvim
```
> [!NOTE]
> Change this line in ~/.config/nvim/lua/config/options.lua

`lua
opt.undodir = "/home/hermit/.local/state/nvim/undo" -- change to your own
`
