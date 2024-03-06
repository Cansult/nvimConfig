-- NvimTree
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

local rows = vim.api.nvim_win_get_height(0)
local cols = vim.api.nvim_win_get_width(0)

-- empty setup using defaults
-- require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  renderer = {
    highlight_git = "all",
    highlight_modified = "all",
    group_empty = true,
    indent_markers = {
      enable = true,
      inline_arrows = true,
    },
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "+",
          arrow_open = "-",
        },
      },
    },
  },
  view = {
    centralize_selection = false,
    cursorline = true,
    debounce_delay = 15,
    side = "right",
    preserve_window_proportions = false,
    number = true,
    relativenumber = false,
    signcolumn = "yes",
    -- width = 30,
    float = {
      enable = true,
      quit_on_focus_loss = true,
      open_win_config = {
        relative = "editor",
        border = "rounded",
        width = math.ceil(vim.api.nvim_win_get_width(0) / 1.5),
        height = math.ceil(vim.api.nvim_win_get_height(0) / 1.5),
        row = math.ceil(vim.api.nvim_win_get_height(0) / 9),
        col = math.ceil(vim.api.nvim_win_get_width(0) / 6),
      },
    },
  },

  filters = {
    dotfiles = false,
  },
})

--[[
vim.api.nvim_create_autocmd("BufEnter", {
group = vim.api.nvim_create_augroup("NvimTreeClose", {clear = true}),
pattern = "NvimTree_*",
callback = function()
local layout = vim.api.nvim_call_function("winlayout", {})
if layout[1] == "leaf" and vim.api.nvim_buf_get_option(vim.api.nvim_win_get_buf(layout[2]), "filetype") == "NvimTree" and layout[3] == nil then vim.cmd("confirm quit") end
end
})
]]--

