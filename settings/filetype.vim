if has("syntax")
  au BufNewFile,BufRead *.coffee  set filetype=coffee
  au BufNewFile,BufRead *.js      set filetype=javascript
  au BufNewFile,BufRead *.rb      set filetype=ruby
  au BufNewFile,BufRead *.jsonify set filetype=ruby
  au BufNewFile,BufRead *.skim    set filetype=slim
  au BufNewFile,BufRead *.slim    set filetype=slim
  au BufNewFile,BufRead *.yml     set filetype=yaml
endif
