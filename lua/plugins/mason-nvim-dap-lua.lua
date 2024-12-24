return {
  "jay-babu/mason-nvim-dap.nvim",
  opts = {
    handlers = {
      php = function()
        local dap = require "dap"
        dap.adapters.php = {
          type = "executable",
          command = "node",
          args = { os.getenv "HOME" .. "/.local/share/nvim/mason/packages/php-debug-adapter/extension/out/phpDebug.js" },
        }

        dap.configurations.php = {
          {
            name = "listen for Xdebug docker",
            type = "php",
            request = "launch",
            port = 40495,
            pathMappings = {
              ["/app"] = "${workspaceFolder}",
            },
          },
        }
      end,
    },
  },
}
