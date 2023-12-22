---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "oceanic-next",
  theme_toggle = { "oceanic-next", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
}

-- M.ui = {
--   statusline = {
--     overriden_modules = function(modules)
--       modules[1] = (function ()
--         return "MODE!"
--       end)()
--
--       table.insert(
--         modules,
--         2,
--         (function()
--             return vim.call['codeium#GetStatusString']
--         end)()
--       )
--     end,
--   },
-- }
M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
