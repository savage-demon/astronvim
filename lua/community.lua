-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.colorscheme.vscode-nvim" },
  -- { import = "astrocommunity.editing-support.zen-mode-nvim" },
  -- { import = "astrocommunity.file-explorer.oil-nvim" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
}
