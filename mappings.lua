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
      function ()
        require('fzf-lua').files()
      end,
      "fzf files",
    },
    ["<leader>qg"] = {
      function ()
        require('fzf-lua').live_grep()
      end,
      "fzf grep",
    },
    ["<leader>qb"] = {
      function ()
        require('fzf-lua').lgrep_curbuf()
      end,
      "fzf current buffer",
    },
    ["<leader>qh"] = {
      function ()
        require('fzf-lua').help_tags()
      end,
      "fzf help tags",
    },
    ["<leader>qs"] = {
      function()
        local cwd = vim.fn.input('Enter the directory path: ')
        require('fzf-lua').files({ cwd = cwd })
      end,
      "start fzf in a specific directory",
    },
  },
}
M.obsidian = {
  n = {
    ["<leader>od"] = { "<cmd> ObsidianOpen <CR>", "Open Obsidian" },
  }
}



  -- more keybinds!
return M
