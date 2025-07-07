# Neovim Configuration Improvement Tasks

This document lists all identified issues and improvement suggestions for the Neovim configuration. It is intended for Claude Code to reference when making improvements to the codebase.

Last Updated: 2025-01-07  
Status Updated: 2025-01-07

## Critical Issues (Priority: High)

### 1. ✅ Mason Configuration Duplication [COMPLETED]
**Problem**: Both `lua/plugins/mason-fix.lua` and `lua/plugins/typescript.lua` configure mason.nvim, causing conflicts.

**Current State**:
- `mason-fix.lua`: Contains UI settings, log level, and concurrent installers
- `typescript.lua`: Contains ensure_installed list

**Solution**:
1. Merge all Mason configurations into `typescript.lua`
2. Delete `mason-fix.lua`

**Implementation**:
```lua
-- In typescript.lua, update the mason.nvim section:
{
  "williamboman/mason.nvim",
  build = ":MasonUpdate",
  opts = {
    ensure_installed = {
      "typescript-language-server",
      "prettier",
      "eslint-lsp",
    },
    ui = {
      border = "rounded",
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗"
      }
    },
    log_level = vim.log.levels.INFO,
    max_concurrent_installers = 10,
  },
},
```

### 2. ✅ TypeScript Configuration Conflict [COMPLETED]
**Problem**: Both LazyVim TypeScript extras and custom `typescript.lua` are active, potentially causing conflicts.

**Current State**:
- `lazyvim.json` includes: `"lazyvim.plugins.extras.lang.typescript"`
- `lua/plugins/typescript.lua` exists with custom configuration

**Solution Options**:
- **Option A** (Recommended): Remove `"lazyvim.plugins.extras.lang.typescript"` from `lazyvim.json` ✅ [IMPLEMENTED]
- **Option B**: Delete `typescript.lua` and use LazyVim's default TypeScript setup

## Medium Priority Issues

### 3. ✅ Remove Example File [COMPLETED]
**Problem**: `lua/plugins/example.lua` is just an example file that doesn't load any configuration.

**Solution**: Delete `lua/plugins/example.lua`

### 4. ✅ Clean up disabled.lua [COMPLETED]
**Problem**: File contains commented-out lines that should be removed for clarity.

**Current State**:
```lua
return {
  { "echasnovski/mini.pairs", enabled = false },
  -- { "neovim/nvim-lspconfig", enabled = false },
  -- { "mason.nvim", enabled = false },
  -- { "saghen/blink.cmp", enabled = false },
}
```

**Solution**: Remove commented lines:
```lua
return {
  { "echasnovski/mini.pairs", enabled = false },
}
```

## Low Priority Issues

### 5. Potential Keymap Conflicts
**Issue**: Some custom keymaps might conflict with LazyVim defaults.

**Potentially Conflicting Mappings**:
- `<C-j>` and `<C-k>`: Mapped to move 5 lines, may conflict with window navigation
- `<leader><Tab>` and `<leader><S-Tab>`: Buffer switching, may conflict with tab operations

**Solution**: Monitor for actual conflicts during usage. If conflicts occur, consider using different key combinations.

### 6. Plugin Version Lock Inconsistency
**Issue**: `mini.pairs` appears in `lazy-lock.json` but is disabled in `disabled.lua`.

**Solution**: This is usually fine, but can be cleaned up with `:Lazy clean` command.

## Performance Optimizations

### 7. TypeScript Server Configuration
**Current State**: Good - using `typescript-tools.nvim` instead of multiple TypeScript servers.

**No action needed**: The current approach of disabling `tsserver` and `vtsls` while using `typescript-tools` is optimal.

## File Structure Issues

### 8. Missing Git Files
**Observation**: `lua/plugins/codecompanion.lua` was deleted according to git status.

**Action**: No action needed unless this was unintentional.

## Recommended Action Order

1. **First**: Fix Mason configuration duplication (merge and delete) ✅
2. **Second**: Resolve TypeScript configuration conflict ✅
3. **Third**: Clean up `disabled.lua` and remove `example.lua` ✅
4. **Monitor**: Watch for keymap conflicts during regular use ⏳

## Commands to Execute

After making changes:
```vim
:Lazy clean
:Lazy sync
:Mason
```

## Testing Checklist

After implementing improvements:
- [x] Verify TypeScript LSP works with `gd` command
- [x] Check that Mason installs all required packages
- [x] Ensure no duplicate plugin configurations exist
- [ ] Test all custom keymaps for conflicts
- [ ] Verify Copilot integration still works

## Notes for Future Improvements

- Consider documenting custom keymaps in a separate file for clarity
- Monitor startup time with `:StartupTime` command
- Consider adding more language-specific configurations as needed