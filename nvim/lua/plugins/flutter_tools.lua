-- ~/.config/nvim/lua/plugins/flutter_debug_keymaps.lua
return {
  -- This ensures these keymaps are loaded after nvim-dap and flutter-tools
  -- You don't need to explicitly require 'dap' here, LazyVim handles it.
  {
    "akinsho/flutter-tools.nvim", -- The plugin that provides FlutterDebug
    keys = {
      -- Example: Map <leader>dd to start Flutter debug
      { "<leader>dd", "<cmd>FlutterDebug<cr>", desc = "Flutter: Debug Current" },
      { "<leader>dr", "<cmd>FlutterRun<cr>", desc = "Flutter: Run Current" },
      { "<leader>dt", "<cmd>FlutterDevTools<cr>", desc = "Flutter: Open DevTools" },
      { "<leader>tL", "<cmd>FlutterLogToggle<cr>", desc = "Flutter: Toggle Log" },
      { "<leader>tC", "<cmd>FlutterLogClear<cr>", desc = "Flutter: Clear Log" },
    },
  },
  {
    "mfussenegger/nvim-dap", -- The plugin that provides actual debugging
    keys = {
      -- DAP keymaps (these are often already set by LazyVim, but you can override or confirm)
      {
        "<leader>dc",
        function()
          require("dap").continue()
        end,
        desc = "DAP: Continue",
      },
      {
        "<leader>dn",
        function()
          require("dap").step_over()
        end,
        desc = "DAP: Step Over",
      },
      {
        "<leader>di",
        function()
          require("dap").step_into()
        end,
        desc = "DAP: Step Into",
      },
      {
        "<leader>do",
        function()
          require("dap").step_out()
        end,
        desc = "DAP: Step Out",
      },
      {
        "<leader>db",
        function()
          require("dap").toggle_breakpoint()
        end,
        desc = "DAP: Toggle Breakpoint",
      },
      {
        "<leader>dr",
        function()
          require("dap").repl.open()
        end,
        desc = "DAP: Open REPL",
      },
      {
        "<leader>de",
        function()
          require("dap.ui.widgets").hover()
        end,
        desc = "DAP: Hover Eval",
      },
      -- Add more DAP keymaps as needed
    },
  },
}
