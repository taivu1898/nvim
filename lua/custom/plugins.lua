local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- python
        "black",
        "debugpy",
        "mypy",
        "ruff-lsp",
        "pyright",

        -- cpp
        "clangd",
        "clang-format",
        "codelldb",

        -- js
        "eslint-lsp",
        "js-debug-adapter",
        "prettier",
        "typescript-language-server",

        -- fontend
        "html-lsp",
        "css-lsp",

        -- markdown
        "markdownlint",
        "mdformat",

      },
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end
  },

  -- python, cpp, js
  {
    "mfussenegger/nvim-dap",
    config = function(_, opts)
      require "custom.configs.js.dap"
      require("core.utils").load_mappings("dap")
    end
  },
  -- tmux
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
    },
    config = function(_, opts)
      local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(path)
      require("core.utils").load_mappings("dap_python")
    end,
  },
  {
    "nvim-neotest/nvim-nio",
  },
  {
    "nvimtools/none-ls.nvim",
    ft = { "python" },
    opts = function()
      return require "custom.configs.python.null-ls"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.python.lspconfig"
      require "custom.configs.cpp.lspconfig"
      require "custom.configs.js.lspconfig"
    end,
  },
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function()
      require "custom.configs.js.lint"
    end
  },
  {
    {
      "jay-babu/mason-nvim-dap.nvim",
      event = "VeryLazy",
      dependencies = {
        "williamboman/mason.nvim",
        "mfussenegger/nvim-dap",
      },
      opts = {
        handlers = {}
      },
    },
    {
      "mhartington/formatter.nvim",
      event = "VeryLazy",
      opts = function()
        return require "custom.configs.js.formatter"
      end
    },

    {
      "jose-elias-alvarez/null-ls.nvim",
      event = "VeryLazy",
      opts = function()
        return require "custom.configs.cpp.null-ls"
      end,
    },
  },
}

return plugins
