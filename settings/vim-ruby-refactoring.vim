let g:ruby_refactoring_map_keys = 0 " Do not use default mappings

autocmd VimEnter * :nnoremap <leader>ap  :RAddParameter<cr>
autocmd VimEnter * :vnoremap <leader>ec  :RExtractConstant<cr>
autocmd VimEnter * :vnoremap <leader>ev  :RExtractLocalVariable<cr>
autocmd VimEnter * :nnoremap <leader>it  :RInlineTemp<cr>
autocmd VimEnter * :vnoremap <leader>rl  :RRenameLocalVariable<cr>
autocmd VimEnter * :vnoremap <leader>ri  :RRenameInstanceVariable<cr>
autocmd VimEnter * :vnoremap <leader>em  :RExtractMethod<cr>
