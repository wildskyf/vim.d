# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a Neovim configuration based on LazyVim framework. The configuration is customized for a lightweight editing experience with specific keybindings and disabled LSP features.

## Key Architecture

- **Framework**: LazyVim - a modern Neovim configuration framework
- **Plugin Manager**: Lazy.nvim with auto-update checking enabled
- **Entry Point**: `init.lua` handles VSCode detection and loads appropriate configs
- **Configuration Structure**:
  - `lua/config/` - Core settings (options, keymaps, autocmds, lazy setup)
  - `lua/plugins/` - Custom plugin configurations and overrides

## Important Customizations

1. **Disabled Features**:
   - LSP configuration (nvim-lspconfig)
   - Mason.nvim (LSP server management)
   - Mini.pairs (auto-pairing)

2. **Key Mappings** (lua/config/keymaps.lua:1-50):
   - `;` → `:` for quick command mode
   - `Ctrl+j/k` → Move 5 lines up/down
   - `Ctrl+h/l` → Jump to word start/end
   - `Shift+Arrow` → Move lines up/down
   - `<leader><Tab>` → Switch buffers

3. **Enabled LazyVim Extras** (lazyvim.json:5-8):
   - AI: GitHub Copilot support
   - Lang: TypeScript and Tailwind CSS

## Working with Plugins

- Plugins are managed via Lazy.nvim
- Custom plugin configs go in `lua/plugins/`
- Version lock file: `lazy-lock.json`
- To add/modify plugins, create/edit files in `lua/plugins/`

## Development Commands

Since this is a Neovim config, there are no traditional build/test commands. Common operations:

- **Update plugins**: Within Neovim, use `:Lazy update`
- **Check plugin status**: `:Lazy`
- **Reload configuration**: `:source %` or restart Neovim
- **Format Lua files**: Uses Stylua with 2-space indentation and 120 char line width

## Notes

- Colorscheme: wellsokai (lua/plugins/colorscheme.lua:3)
- Python tooling: Configured to use ruff (lua/config/options.lua:15)
- Ripgrep integration enabled for fast searching
- Snacks animations disabled (lua/config/options.lua:24)