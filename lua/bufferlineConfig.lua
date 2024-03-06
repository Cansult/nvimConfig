vim.opt.termguicolors = true
require("bufferline").setup({
options = {
  -- 关闭 Tab 的命令
  close_command = "Bdelete! %d",
  offsets = { { filetype = "NvimTree", text = "NvimTree" } },
}
})

