local map = vim.api.nvim_set_keymap


local default_opts = {noremap = true, silent = true}


map('v', 'Y', '"+y', default_opts)
map('i', 'jk', '<Esc>', {noremap = true})

--Снять выделение после поиска


-- bufferline
map('n', '<Tab>', ':BufferLineCycleNext<CR>', default_opts)
map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', default_opts)
map('n', '<C-t><C-n>', ':tabnew<CR>', default_opts) --Tab new
map('n', '<C-t><C-k>', ':bd<CR>', default_opts) --Buffer close
-- <F6> дерево файлов.
map('n', '<F6>', ':NvimTreeRefresh<CR>:NvimTreeToggle<CR>', default_opts)

--telescope
map('n', '<C-f><C-f>', [[ <cmd>lua require('telescope.builtin').find_files()<cr>]], default_opts)
map('n', '<C-f><C-b>', [[ <cmd>lua require('telescope.builtin').buffers()<cr>]], default_opts)
-- <F4> Поиск слова под курсором
map('n', '<C-f><C-w>', [[<cmd>lua require('telescope.builtin').grep_string()<cr>]], default_opts)
-- <S-F4> Поиск слова в модальном окошке
map('n', '<C-f><C-g>', [[<cmd>lua require('telescope.builtin').live_grep()<cr>]], default_opts)

-- Set layout En when leave InsertMode

vim.cmd [[autocmd CmdwinEnter  * lua os.execute("swaymsg input '*' xkb_switch_layout 0")]]
vim.cmd [[autocmd VimEnter * lua os.execute("swaymsg input '*' xkb_switch_layout 0")]]
