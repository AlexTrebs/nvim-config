# Neovim Cheat Sheet

## Quick Reference - Most Used Commands

| Command | What It Does |
| --- | --- |
| `<space>fd` | **Find file** (fuzzy search) |
| `<space>fg` | **Find text** in entire project (grep) |
| `<space>fb` | List open buffers |
| `gd` | **Go to definition** |
| `<C-o>` | **Jump back** to previous location |
| `<leader>ha` | **Mark file** in Harpoon |
| `<leader>hm` | **Harpoon menu** (see marked files) |
| `<leader>q` | **Close buffer** |
| `<leader>ch` | **Open this cheatsheet** |
| `*` | Search word under cursor |
| `n` / `N` | Next/previous search result |

---

## 1. Installed Plugins & Purpose

| Plugin | Purpose |
| --- | --- |
| `nvim-lua/plenary.nvim` | Required utility functions for many Neovim plugins |
| `neovim/nvim-lspconfig` | LSP (Language Server Protocol) configuration |
| `williamboman/mason.nvim` | LSP, DAP, and formatter installer |
| `williamboman/mason-lspconfig.nvim` | Integration of Mason with LSP servers |
| `WhoIsSethDaniel/mason-tool-installer.nvim` | Ensure tools like formatters / linters are installed |
| `b0o/SchemaStore.nvim` | JSON/YAML schemas for LSP autocomplete |
| `folke/lazydev.nvim` | Lua dev support for Neovim config (replaces neodev) |
| `saghen/blink.lib` + `saghen/blink.cmp` | Fast autocomplete engine with Lua fuzzy matching |
| `L3MON4D3/LuaSnip` | Snippet engine |
| `nvim-treesitter/nvim-treesitter` | Syntax highlighting, code parsing, incremental selection |
| `windwp/nvim-ts-autotag` | Auto-close HTML/JSX tags |
| `romgrk/barbar.nvim` | Tabline / buffer line |
| `nvim-lualine/lualine.nvim` | Statusline |
| `j-hui/fidget.nvim` | LSP progress display |
| `nvim-tree/nvim-tree.lua` | File explorer tree |
| `nvim-tree/nvim-web-devicons` | Icons for files |
| `folke/noice.nvim` | UI for messages, cmdline and popupmenu |
| `MunifTanjim/nui.nvim` | UI component library for Noice |
| `folke/which-key.nvim` | Shows available keybindings popup after `<leader>` |
| `echasnovski/mini.surround` | Surround text with brackets, quotes, tags |
| `lewis6991/gitsigns.nvim` | Git diff in gutter, hunk staging, inline blame |
| `folke/trouble.nvim` | Project-wide diagnostic panel |
| `folke/snacks.nvim` | Bigfile handling, word highlights, indent guides |
| `alexghergh/nvim-tmux-navigation` | Seamless navigation between nvim splits and tmux panes |
| `nvim-telescope/telescope.nvim` | Fuzzy finding and search |
| `nvim-telescope/telescope-fzf-native.nvim` | FZF integration for Telescope |
| `nvim-telescope/telescope-ui-select.nvim` | UI select menus for Telescope |
| `nvim-telescope/telescope-smart-history.nvim` | Persistent search history for Telescope |
| `kkharji/sqlite.lua` | SQLite interface (used by smart history) |
| `mfussenegger/nvim-dap` | Debug Adapter Protocol |
| `rcarriga/nvim-dap-ui` | UI for DAP |
| `leoluz/nvim-dap-go` | Go language debugging support |
| `theHamsta/nvim-dap-virtual-text` | Display debug info inline |
| `nvim-neotest/nvim-nio` | Test runner integration |
| `ThePrimeagen/harpoon` | Quick file navigation / marks |
| `stevearc/oil.nvim` | Edit filesystem as a buffer — rename/move/delete files by editing text |
| `stevearc/conform.nvim` | Autoformatting on save |
| `windwp/nvim-autopairs` | Auto-close `()` `[]` `{}` and quotes |
| `folke/flash.nvim` | Jump anywhere on screen with `s`/`S` by 2 chars |
| `folke/persistence.nvim` | Session management — restore buffer layout per directory |
| `tpope/vim-dadbod` | Database client |
| `kristijanhusak/vim-dadbod-ui` | UI for database plugin |
| `kristijanhusak/vim-dadbod-completion` | SQL completion |
| `iamcco/markdown-preview.nvim` | Markdown preview in browser |
| `ThePrimeagen/99` | AI agent for Neovim (Claude claude-sonnet-4-6) |
| `MeanderingProgrammer/render-markdown.nvim` | Live markdown rendering in buffer |

---

## 2. Keybindings / Shortcuts

### 2.1. Terminal
| Key | Action |
| --- | --- |
| `<leader>t` | Open terminal in bottom 5-line split |

### 2.2. LSP & Autocomplete
| Key | Action |
| --- | --- |
| `gd` | Go to definition |
| `<C-LeftMouse>` | Go to definition (Ctrl+Click) |
| `gD` | Go to declaration |
| `gr` | References |
| `gT` | Type definition |
| `K` | Hover documentation |
| `<space>cr` | Rename symbol |
| `<space>ca` | Code actions |
| `<space>wd` | Document symbols |
| `<space>ww` | Workspace diagnostics |
| `<leader>e` | Opens floating diagnostics window |
| `<space>f` | Format buffer (autoformat on save via `conform.nvim`) |
| `<C-Space>` | Manually trigger autocomplete |

### 2.3. Telescope (Fuzzy Finder)
| Key | Action |
| --- | --- |
| `<space>fd` | Find files in cwd |
| `<space>ft` | Find Git-tracked files in current directory |
| `<space>fh` | Search help tags |
| `<space>fg` | Ripgrep search in project |
| `<space>fb` | Open buffer list |
| `<space>/` | Fuzzy search in current buffer |
| `<space>gw` | Search string under cursor |

### 2.4. DAP / Debugging
| Key | Action |
| --- | --- |
| `<space>b` | Toggle breakpoint |
| `<space>gb` | Run to cursor |
| `<space>?` | Evaluate variable under cursor |
| `<F1>` | Continue |
| `<F2>` | Step into |
| `<F3>` | Step over |
| `<F4>` | Step out |
| `<F5>` | Step back |
| `<F13>` | Restart |

### 2.5. Harpoon (Quick file navigation)
| Key | Action |
| --- | --- |
| `<leader>ha` | Add current file to Harpoon marks |
| `<leader>hm` | Toggle Harpoon quick menu |
| `<leader>j` | Jump to Harpoon mark 1 |
| `<leader>k` | Jump to Harpoon mark 2 |
| `<leader>l` | Jump to Harpoon mark 3 |
| `<leader>;` | Jump to Harpoon mark 4 |
| `<leader><Right>` | Next Harpoon mark |
| `<leader><Left>` | Previous Harpoon mark |

### 2.6. Barbar (Buffer Navigation)
| Key | Action |
| --- | --- |
| `<C-Tab>` | Next buffer |
| `<C-S-Tab>` | Previous buffer |
| `<leader>>` | Move buffer right |
| `<leader><` | Move buffer left |
| `<leader>q` | **Close current buffer** (quick!) |
| `<leader>bc` | Close current buffer |
| `<leader>bo` | Close other buffers |
| `<leader>1..9` | Go to buffer 1-9 |
| `<leader>bp` | Pin/unpin buffer |

### 2.7. Hyprland Window Management
| Key | Action |
| --- | --- |
| `Super+M` | Toggle Spotify special workspace |
| `Super+F` | Toggle floating |

### 2.8. Navigation / Editing
| Key | Action |
| --- | --- |
| `<C-h>` / `<C-j>` / `<C-k>` / `<C-l>` | Navigate nvim splits **and** tmux panes seamlessly |
| `<M-,>` / `<M-.>` | Resize splits horizontally |
| `<M-t>` / `<M-s>` | Resize splits vertically |
| `<M-j>` / `<M-k>` | Move current line down/up (or diff navigation) |
| `<CR>` | Clear search highlight if active, else enter |
| `<leader>ch` | **Open this cheatsheet** (formatted in browser) |

### 2.9. Git (gitsigns)
| Key | Action |
| --- | --- |
| `]h` | Next git hunk |
| `[h` | Previous git hunk |
| `<leader>hs` | Stage hunk |
| `<leader>hu` | Unstage hunk |
| `<leader>hp` | Preview hunk diff |
| `<leader>hb` | Blame current line (full) |

### 2.10. Diagnostics (trouble.nvim)
| Key | Action |
| --- | --- |
| `<leader>xx` | Toggle project diagnostics panel |
| `<leader>xb` | Toggle buffer diagnostics panel |
| `<leader>xs` | Toggle symbols panel |

### 2.11. Surround (mini.surround)
| Key | Action |
| --- | --- |
| `sa{motion}{char}` | Add surround — e.g. `saiw"` surrounds word with `"` |
| `sd{char}` | Delete surround — e.g. `sd"` removes `"` |
| `sr{old}{new}` | Replace surround — e.g. `sr"'` changes `"` to `'` |

### 2.12. 99 AI Agent
| Key | Action |
| --- | --- |
| `<leader>a` (visual) | Send visual selection to 99 AI |
| `<leader>as` (visual) | Stop all 99 AI requests |

### 2.13. Markdown
| Key | Action |
| --- | --- |
| `<leader>mp` | **Markdown Preview** - Open in web browser (full HTML rendering) |
| `<leader>ms` | Stop markdown preview |
| `<leader>md` | Toggle in-editor rendering (conceals markup, styles headers) |

### 2.14. Comments & Snippets
| Key | Action |
| --- | --- |
| `gcc` | Toggle comment line |
| `gc` | Toggle comment |
| `<Plug>luasnip-expand-repeat` | Repeat last snippet node expansion |
| `<Plug>luasnip-delete-check` | Remove current snippet from jumplist |

### 2.15. Plenary Test
| Key | Action |
| --- | --- |
| `<Plug>PlenaryTestFile` | Test current file with Plenary |

### 2.16. Oil (File Manager)
| Key | Action |
| --- | --- |
| `-` | Open parent directory in Oil |
| `<CR>` | Open file / enter directory |
| `-` (in Oil) | Go up to parent |
| `_` | Open cwd |
| `g.` | Toggle hidden files |
| `<C-p>` | Preview file |
| `q` | Close Oil |

### 2.17. Flash (Jump Motions)
| Key | Action |
| --- | --- |
| `s` | Jump to any position (type 2 chars, pick label) |
| `S` | Treesitter-aware jump (select nodes) |
| `r` (operator) | Remote flash — operate on distant text |
| `R` (operator) | Treesitter search select |

### 2.18. Sessions (persistence.nvim)
| Key | Action |
| --- | --- |
| `<leader>qs` | Restore session for current directory |
| `<leader>qS` | Select a session to restore |
| `<leader>ql` | Restore last session |
| `<leader>qd` | Don't save session on exit |

---

## 3. General Neovim Commands

| Command | Description |
| --- | --- |
| `:e <file>` | Open file |
| `:w` | Save file |
| `:w <file>` | Save as new file |
| `:q` | Quit window |
| `:q!` | Quit without saving |
| `:wq` / `:x` | Save and quit |
| `:bn` / `:bp` | Next / previous buffer |
| `:bd` | Close buffer |
| `:ls` | List buffers |
| `:split` / `:vsplit` | Horizontal / vertical split |
| `Ctrl-w h/j/k/l` | Move between splits |
| `Ctrl-w q` | Close current split |
| `/pattern` | Search forward |
| `?pattern` | Search backward |
| `n` / `N` | Repeat search |
| `:%s/old/new/gc` | Replace with confirmation |
| `m{letter}` | Set mark |
| `'{letter}` | Jump to mark line |
| `` `{letter}` `` | Jump to exact mark |
| `u` / `Ctrl-r` | Undo / redo |
| `v` / `V` / `Ctrl-v` | Visual / line / block selection |
| `y` / `d` / `c` | Yank / delete / change selection |
| `>` / `<` | Indent / un-indent selection |
| `:set number` / `:set relativenumber` | Show line numbers |
| `:noh` | Clear search highlights |
| `:checkhealth` | Check Neovim & plugin setup |
| `:source %` | Reload current file (useful for config) |
