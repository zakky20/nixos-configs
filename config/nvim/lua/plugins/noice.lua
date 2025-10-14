return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  opts = {
    lsp = {
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
    },
    presets = {
      bottom_search = true,
      command_palette = true,
      long_message_to_split = true,
      inc_rename = false,
      lsp_doc_border = false,
    },
    routes = {
      {
        filter = {
          event = "msg_show",
          any = {
            { find = "%d+L, %d+B" },
            { find = "; after #%d+" },
            { find = "; before #%d+" },
          },
        },
        view = "mini",
      },
    },
    views = {
      cmdline_popup = {
        -- position = {
        --   row = "0%",
        --   col = "0%",
        -- },
        size = {
          width = 60,
          height = "auto",
        },
      },
    },
  },
  keys = {
    {
      "<leader>nd",
      function() require("noice").cmd("dismiss") end,
      desc = "Dismiss all notifications",
    },
    {
      "<leader>nh",
      function() require("noice").cmd("history") end,
      desc = "Noice history",
    },
    {
      "<leader>nl",
      function() require("noice").cmd("last") end,
      desc = "Noice last message",
    },
  },
}
