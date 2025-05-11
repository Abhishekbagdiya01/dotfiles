if not vim.g.vscode then
  return {

    {

      "akinsho/flutter-tools.nvim",

      lazy = false,

      dependencies = {

        "nvim-lua/plenary.nvim",

        "stevearc/dressing.nvim",
      },

      opts = {

        fvm = true,
      },
    },
  }
end
