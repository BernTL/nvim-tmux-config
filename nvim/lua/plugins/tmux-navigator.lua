return {
  "christoomey/vim-tmux-navigator",
  lazy = false,
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateDown",
    "TmuxNavigateUp",
    "TmuxNavigateRight",
    "TmuxNavigatePrevious",
  },
  keys = {
    { "<c-h>", "<cmd> TmuxNavigateLeft<CR>", "window left" },
    { "<c-j>", "<cmd> TmuxNavigateDown<CR>", "window down" },
    { "<c-k>", "<cmd> TmuxNavigateUp<CR>", "window up" },
    { "<c-l>", "<cmd> TmuxNavigateRight<CR>", "window right" },
    { "<c-\\>", "<cmd> TmuxNavigatePrevious<CR>", "window previous" },
  },
}
