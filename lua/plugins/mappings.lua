return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<Leader>bD"] = {
            function()
              require("astroui.status").heirline.buffer_picker(
                function(bufnr) require("astrocore.buffer").close(bufnr) end
              )
            end,
            desc = "Pick to close",
          },
          -- tables with the `name` key will be registered with which-key if it's installed
          -- this is useful for naming menus
          -- ["<Leader>b"] = { name = "Buffers" },
          -- quick save
          -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
          -- ["<S-h>"] = { ":bprev<cr>", desc = "Previous buffer" },
          -- ["<S-l>"] = { ":bnext<cr>", desc = "Next buffer" },
          L = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
          H = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },
          ["<Leader>z"] = { "<cmd>NoNeckPain<cr>", desc = "Toggle NoNeckPain" },
          ["<Leader>n"] = false,
          ["-"] = { function() require("oil").open() end, desc = "Open folder in Oil" },
          ["<Leader>e"] = { function() require("oil").open() end, desc = "Open folder in Oil" },
          ["<Leader>O"] = false,
          ["<Leader>od"] = "<cmd>DBUIToggle<cr>",
          ["<C-d>"] = "<C-d>zz",
          n = "nzz",
          N = "Nzz",
          ["<cr>"] = "<cr>zz",
          ["<Leader>ll"] = "<cmd>LspRestart<cr>",
          -- ["<C-u>"] = "<C-u>zz",
        },
        i = {
          ["<cr>"] = "<cr>zz",
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
        },
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      mappings = {
        n = {
          -- this mapping will only be set in buffers with an LSP attached
          K = {
            function() vim.lsp.buf.hover() end,
            desc = "Hover symbol details",
          },
          -- condition for only server with declaration capabilities
          gD = {
            function() vim.lsp.buf.declaration() end,
            desc = "Declaration of current symbol",
            cond = "textDocument/declaration",
          },
          gd = {
            function()
              vim.lsp.buf.definition()
              vim.cmd "normal! zz"
            end,
            desc = "Show the definition of current symbol",
            cond = "textDocument/definition",
          },
        },
      },
    },
  },
}
