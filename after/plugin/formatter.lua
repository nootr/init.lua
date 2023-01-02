require('formatter').setup({
  filetype = {
    rust = {
      function()
        return {
          exe = 'rustfmt',
          stdin = true,
        }
      end
    },
    python = {
      function()
        return {
          exe = 'black',
          args = { '-' },
          stdin = true,
        }
      end
    },
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
  }
})
