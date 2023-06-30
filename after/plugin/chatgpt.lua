local home = os.getenv('HOME')
local chatgpt = require('chatgpt')

chatgpt.setup({
    api_key_cmd = "cat " .. home .. "/.openai.apikey",
    openai_params = {
      model = "gpt-4",
    }
})

vim.keymap.set('n', '<leader>c', ':ChatGPT<CR>')
vim.keymap.set('t', '<leader>c', ':ChatGPT<CR>')
vim.keymap.set('v', '<leader>c', ':ChatGPT<CR>')
vim.keymap.set('n', '<leader>C', ':ChatGPTEditWithInstructions<CR>')
vim.keymap.set('t', '<leader>C', ':ChatGPTEditWithInstructions<CR>')
vim.keymap.set('v', '<leader>C', ':ChatGPTEditWithInstructions<CR>')
