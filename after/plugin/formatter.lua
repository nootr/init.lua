local formatter = require('formatter')
local formatters = require('formatter.filetypes.any')

formatter.setup({
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
    ['*'] = {
      formatters.remove_trailing_whitespace
    }
  }
})
