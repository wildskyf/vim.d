# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a Neovim configuration repository based on LazyVim framework. The configuration uses Lua for all settings and plugin management via lazy.nvim.

## Architecture & Structure

### Core Configuration
- **init.lua**: Entry point that loads `config.lazy`
- **lua/config/**: Core configuration files
  - `lazy.lua`: LazyVim and lazy.nvim setup with plugin specifications
  - `keymaps.lua`: Custom keybindings (LazyVim defaults are extended)
  - `options.lua`: Vim options overrides
  - `autocmds.lua`: Auto-commands configuration

### Plugin Management
- **lua/plugins/**: Plugin configurations
  - Each file returns a Lua table with plugin specifications
  - `example.lua` contains comprehensive examples (currently disabled with early return)
  - `colorscheme.lua`: Sets wellsokai as the active colorscheme
- Plugins are managed via lazy.nvim with LazyVim as the base configuration
- Plugin updates are checked periodically (checker.enabled = true)

## Development Commands

### Plugin Management
```bash
# Open Neovim to trigger plugin installation/updates
nvim

# Inside Neovim:
:Lazy             # Open lazy.nvim UI for plugin management
:Lazy update      # Update all plugins
:Lazy sync        # Sync plugin state with lock file
:Lazy restore     # Restore plugins to lock file versions
```

### Configuration Testing
```bash
# Test configuration changes
nvim --headless "+Lazy! sync" +qa  # Headless plugin sync
nvim -u NONE                        # Start without config (for debugging)
```

### File Navigation
- Use `:Telescope find_files` or `<leader>ff` to find files
- Use `:Rg` or `<leader>r` for ripgrep search

## Key Customizations

### Modified Keymaps
- Movement: `<C-j/k>` moves 5 lines, `<C-h/l>` moves by word
- Buffer navigation: `<S-LEFT/RIGHT>` for previous/next buffer
- Window resizing: `<leader><arrow>` adjusts window size by 5
- Line moving: `<S-UP/DOWN>` moves lines up/down

### LazyVim Configuration
- Relative line numbers disabled (`relativenumber = false`)
- Colorscheme: wellsokai (overrides LazyVim default)
- Plugin checker enabled with silent notifications
- Performance optimizations with disabled built-in plugins

## Adding New Plugins

Create a new file in `lua/plugins/` or modify existing ones:

```lua
return {
  -- Simple plugin addition
  { "plugin/repo" },
  
  -- With configuration
  {
    "plugin/repo",
    opts = {
      -- plugin options
    },
    keys = {
      -- keybindings
    },
  },
  
  -- Override LazyVim plugin
  {
    "existing/plugin",
    enabled = false,  -- to disable
    opts = function(_, opts)
      -- modify opts
      return opts
    end,
  },
}
```

## File Lock Management

- `lazy-lock.json`: Tracks exact plugin versions
- `lazyvim.json`: LazyVim extras and news tracking
- Always commit lock file changes after plugin updates

## Troubleshooting

1. **Plugin issues**: Run `:Lazy` to check plugin status and errors
2. **Configuration errors**: Check `:messages` for Lua errors
3. **Reset to clean state**: Delete `~/.local/share/nvim/lazy/` and restart
4. **LazyVim updates**: The framework auto-checks for updates (news in lazyvim.json)