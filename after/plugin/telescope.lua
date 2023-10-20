local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fh', builtin.find_files, {}) --all files
vim.keymap.set('n', '<leader>ff', builtin.git_files, {}) --respects gitignore
vim.keymap.set('n', '<leader>fc', builtin.current_buffer_fuzzy_find, {}) --grep current
vim.keymap.set('n', '<leader>fs', builtin.live_grep, {}) --grep all working tree live
vim.keymap.set('n', '<leader>fw', builtin.grep_string, {}) --grep string at cursor
vim.keymap.set('n', '<leader>gr', function() --grep
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
