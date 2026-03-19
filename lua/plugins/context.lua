return { -- plugin to display function context
  "nvim-treesitter/nvim-treesitter-context",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  opts = {
    max_lines = 3,           -- How many lines the window should span
    min_window_height = 0,   -- Minimum editor window height to enable context
    line_numbers = true,
    multiline_threshold = 20, -- Maximum number of lines to show for a single context
    trim_scope = 'outer',    -- Which context lines to discard if max_lines is exceeded
    mode = 'cursor',         -- Line used to calculate context. Can be 'cursor' or 'topline'
  },
}
