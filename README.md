<!--div id="user-content-toc">
  <ul align="center" style="list-style: none;">
    <summary>
      <h1>✨ Neofleet ✨</h1>
    </summary>
  </ul>
</div>-->
<h1 align=center>✨ Neofleet ✨</h1>
<h4 align=center>
  
[Requirements](#requirements) • [Installation](#installation-unix) • [Usage](#usage)
</h4><br>

Neofleet is a blazing fast, user-friendly neovim config for C++ and Python developers. It is aimed for people who wants fast and nice-looking IDE. It's free and can be modified as you want. *Shiny as a diamond.*

# Getting started 🚀

## Requirements
* [Neovim 0.11+](https://neovim.io/)
* [Nerd Fonts](https://nerdfonts.com)
* 24-bit color terminal ([iTerm2](https://iterm2.com), [alacritty](https://alacritty.org), [kitty](https://github.com/kovidgoyal/kitty), etc.)
* [RipGrep](https://github.com/BurntSushi/ripgrep) (for live grep feature)
* [Git](https://git-scm.com)

## Installation (unix)
Delete previous nvim config:
```bash
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
```

Clone new config:
```bash
git clone https://github.com/king-of-ducks/Neofleet.git ~/.config/nvim
```

Delete `.git` folder so you can merge it with your config:
```bash
rm -rf ~/.config/nvim/.git
```

Run nvim:
```bash
nvim
```

After plugin installation was complete, run `:MasonInstall clangd pyright lua-language-server` to install all LSP servers<br>

# Usage
## Keymaps
`<C-q>` - quit Nvim<br>
`<C-s>` - save file<br>
`<Leader>nn` - open left Neotree<br>
`<Leader>nf` - open floating Neotree<br>
`<C-t>` - open terminal window<br>
`<M-l>`, `<M-RIGHT>` - move to next tab<br>
`<M-h>`, `<M-LEFT>` - move to previous tab<br>
`<SPACE>l` - Open Lazy.nvim<br>
`<SPACE>m` - Open Mason<br>
`<SPACE>t` - Open theme selector<br>
`<SPACE>ff` - Find Files<br>
`<SPACE>fg` - Live Grep<br>
`<SPACE>fb` - Builtin Telescope<br>

