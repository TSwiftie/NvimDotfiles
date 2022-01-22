local M = {}

-- if theme given, load given theme if given, otherwise nvchad_theme
M.init = function()
    vim.api.nvim_exec(
    [[
    "主题颜色配置
    "Credit joshdick
    "Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
    "If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
    "(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
    if (empty($TMUX))
        if (has("nvim"))
            "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
            let $NVIM_TUI_ENABLE_TRUE_COLOR=1
        endif
        "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
        "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
        " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
        if (has("termguicolors"))
            set termguicolors
        endif 
    endif
    if exists('+termguicolors')
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
        set termguicolors
    endif
    ]],false
    )
    vim.cmd "colorscheme dracula"
    vim.cmd "hi rainbowcol1 guifg=lightred"
    vim.cmd "hi rainbowcol2 guifg=lightorange"
    vim.cmd "hi rainbowcol3 guifg=lightyellow"
    vim.cmd "hi rainbowcol4 guifg=lightgreen"
    vim.cmd "hi rainbowcol5 guifg=lightgrey"
    vim.cmd "hi rainbowcol6 guifg=lightblue"
    vim.cmd "hi rainbowcol7 guifg=lightgray"
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
