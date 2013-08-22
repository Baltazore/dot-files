" You need xsel to use this script.
" Install xsel via apt-get.
function! Paste(clipboard_name)
  let shellcmd = 'xsel -o --'.a:clipboard_name

  " Execute and exit if error occured
  let clipboard = system(shellcmd)
  if v:shell_error
    echo 'Error occured while pasting!'
    echo v:shell_error
    return 0
  endif

  " Insert in paste mode to prevent autoindentation and exit from paste mode
  execute ":set paste"
  exe 'normal i'.clipboard
  execute ":set nopaste"

  echo 'Pasted!'
endfunction

nmap <leader>rp :call Paste('primary')<CR>    " Mouse roll clipboard (Roll Paste)
nmap <leader>tp :call Paste('clipboard')<CR>  " Ctrl+Shift+V clipboard (Terminal Paste)
