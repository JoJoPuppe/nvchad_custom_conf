---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    ["zR"] = {
      function()
        require("ufo").openAllFolds()
      end,
      "open all folds",
    },
    ["zM"] = {
      function()
        require("ufo").closeAllFolds()
      end,
      "close all folds",
    },
    ["md"] = { "<cmd> PasteImg <CR>", "Paste Image into Markdown" },
  },
}

M.fzf = {
  n = {
    ["<leader>qf"] = {
      function()
        require("fzf-lua").files()
      end,
      "fzf files",
    },
    ["<leader>qg"] = {
      function()
        require("fzf-lua").live_grep()
      end,
      "fzf grep",
    },
    ["<leader>qb"] = {
      function()
        require("fzf-lua").lgrep_curbuf()
      end,
      "fzf current buffer",
    },
    ["<leader>qh"] = {
      function()
        require("fzf-lua").help_tags()
      end,
      "fzf help tags",
    },
    ["<leader>qs"] = {
      function()
        local cwd = vim.fn.input "Enter the directory path: "
        require("fzf-lua").files { cwd = cwd }
      end,
      "start fzf in a specific directory",
    },
  },
}
M.obsidian = {
  n = {
    ["<leader>od"] = { "<cmd> ObsidianOpen <CR>", "Open Obsidian" },
  },
}

M.lsp_overwrite = {
  n = {

    ["<leader>ls"] = {
      function()
        vim.lsp.buf.signature_help()
      end,
      "LSP signature help",
    },

    ["<leader>D"] = {
      function()
        vim.lsp.buf.type_definition()
      end,
      "LSP definition type",
    },

    ["<leader>ra"] = {
      function()
        require("nvchad.renamer").open()
      end,
      "LSP rename",
    },

    ["<leader>ca"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },

    ["gr"] = {
      function()
        vim.lsp.buf.references()
      end,
      "LSP references",
    },

    ["<leader>f"] = {
      function()
        vim.diagnostic.open_float { border = "rounded" }
      end,
      "Floating diagnostic",
    },

    ["[d"] = {
      function()
        vim.diagnostic.goto_prev { float = { border = "rounded" } }
      end,
      "Goto prev",
    },

    ["]d"] = {
      function()
        vim.diagnostic.goto_next { float = { border = "rounded" } }
      end,
      "Goto next",
    },
  },
}

-- more keybinds!
return M
