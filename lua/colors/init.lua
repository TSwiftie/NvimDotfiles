local M = {}

-- if theme given, load given theme if given, otherwise nvchad_theme
M.init = function()
   vim.cmd [[colorscheme dracula]]
--[[
   local present, base16 = pcall(require, "base16")

   if present then
      -- first load the base16 theme
      base16(base16.themes(theme), true)

      -- unload to force reload
      package.loaded["colors.highlights" or false] = nil
      -- then load the highlights
      require "colors.highlights"
   end
--]]
end

return M
