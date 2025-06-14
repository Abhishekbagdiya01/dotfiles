return {
  {
    "akinsho/flutter-tools.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required for async stuff
      "stevearc/dressing.nvim", -- enhances UI prompts like device selector
    },
    config = function()
      require("flutter-tools").setup({
        widget_guides = {
          enabled = true,
        },
        dev_log = {
          enabled = true,
          open_cmd = "tabedit", -- or split, vsplit etc.
        },
        debugger = {
          enabled = true,
          run_via_dap = true,
        },
      })
    end,
    keys = {
      { "<leader>dd", "<cmd>FlutterDebug<cr>", desc = "Flutter: Debug Current" },
      { "<leader>dR", "<cmd>FlutterRun<cr>", desc = "Flutter: Run Current" },
      { "<leader>dt", "<cmd>FlutterDevTools<cr>", desc = "Flutter: Open DevTools" },
      { "<leader>tL", "<cmd>FlutterLogToggle<cr>", desc = "Flutter: Toggle Log" },
      { "<leader>tC", "<cmd>FlutterLogClear<cr>", desc = "Flutter: Clear Log" },
    },
  },
}
