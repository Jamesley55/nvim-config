keymap = vim.keymap.set

keymap('n', 'ff', _find_files)
keymap('n', 'fw', '<cmd> Telescope live_grep <cr>')

-- Bufferline bindings
keymap('n', 'f',        '<cmd> BufferLinePick <cr>')
keymap('n', 'cf',        '<cmd> BufferLinePickClose <cr>')
keymap('n', '<TAB>',    '<cmd> BufferLineCycleNext <cr>')
keymap('n', '<S-TAB>',  '<cmd> BufferLineCyclePrev <cr>')

-- Hope bindings
keymap('n', ';j', '<cmd> HopWord <cr>')
keymap('n', ';l', '<cmd> HopLineStart <cr>')


-- Binding for code runner
keymap('n', '<F5>', '<cmd> Run <cr>')

-- Other bindings nvimtree, markdown preview, Neoformat, Colorizer, LazyGit
keymap('n', '<S-z>','<cmd> NvimTreeToggle <cr>')
keymap('n', '<Leader>gi',      '<cmd> LazyGit <cr>')
keymap('n', '<Leader>n',       '<cmd> enew <cr>')
keymap('n', '[[',       '<cmd> vertical resize +7 <cr>')
keymap('n', ']]',       '<cmd> vertical resize -7 <cr>')
keymap('n', '<Leader>nvim',      config_nvim)

-- LSP bindings
keymap('n', 'gD',        '<cmd> lua vim.lsp.buf.declaration() <cr>')
keymap('n', 'gd',        '<cmd> lua vim.lsp.buf.definition() <cr>')
keymap('n', 'K',         '<cmd> lua vim.lsp.buf.hover() <cr>')
keymap('n', 'gi',        '<cmd> lua vim.lsp.buf.implementation() <cr>')
keymap('n', '<space>wa', '<cmd> lua vim.lsp.buf.add_workspace_folder() <cr>')
keymap('n', '<space>wr', '<cmd> lua vim.lsp.buf.remove_workspace_folder() <cr>')
keymap('n', '<space>wl', '<cmd> lua print(vim.inspect(vim.lsp.buf.list_workspace_folders())) <cr>')
keymap('n', '<leader>d',  '<cmd> lua vim.lsp.buf.type_definition() <cr>')
keymap('n', 'rn', '<cmd> lua vim.lsp.buf.rename() <cr>')
keymap('n', '<space>ca', '<cmd> lua vim.lsp.buf.code_action() <cr>')
keymap('n', 'gr',        '<cmd> lua vim.lsp.buf.references() <cr>')
keymap('n', '<space>e',  '<cmd> lua vim.diagnostic.open_float() <cr>')
keymap('n', '<space>q',  '<cmd> lua vim.diagnostic.setloclist() <cr>')
keymap('n', '<S-p>',  '<cmd> lua vim.lsp.buf.formatting() <cr>')
keymap('n', '<C-k>',     '<cmd> lua vim.lsp.buf.signature_help() <cr>')
keymap('n', '<C-n>',     '<cmd> lua vim.diagnostic.goto_prev() <cr>')
keymap('n', '<C-p>',     '<cmd> lua vim.diagnostic.goto_next() <cr>')

-- biding for Esc key 
keymap('i', 'kj', '<Esc>' , {})
keymap('i', 'jk', '<Esc>' , {})


-- Binding to swtich to normal mode in terminal, press <Esc> two times

vim.cmd(':tnoremap <Esc><Esc> <C-\\><C-n>')
