# nvim-tmux-config

My configuration for **Neovim (LazyVim)** + **tmux**, stored for easy reuse across machines.

---

## 📁 Repo Structure

.
├── .tmux.conf
└── nvim
    ├── init.lua
    ├── lua/
    │   └── … custom lua modules, plugins, overrides …
    └── other config files


- `.tmux.conf` — tmux configuration
  - It must be placed at `~/` directory
- `nvim/` — Neovim + LazyVim setup (init, plugin configs, overrides, customizations)  
  - It must be placed at `~/.config/` directory

> Note: No need to commit plugin binaries or cache directories (e.g. `~/.local/share/nvim`). LazyVim will re-bootstrap them automatically.

---

## 🚀 Setup on a New VM

### 1. Install required software

```bash
# Example for Debian/Ubuntu
sudo apt update
sudo apt install -y neovim tmux git ripgrep fd-find
