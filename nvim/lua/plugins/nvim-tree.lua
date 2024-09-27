-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  cmd = 'Nvimtree',
  keys = {
    { '\\', ':NvimTreeFocus<CR>', desc = 'Focus filetree', silent = true },
  },
  opts = {
    filters = { dotfiles = false },
    disable_netrw = true,
    hijack_cursor = true,
    renderer = {
      root_folder_label = false,
      highlight_git = true,
    },
  },
}
