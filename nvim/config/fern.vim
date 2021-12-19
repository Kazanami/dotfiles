autocmd VimEnter * ++nested Fern . -reveal=% -drawer -stay
let g:fern#default_hidden=1
let g:fern#disable_default_mappings=0
function! s:init_fern() abort
  echo "This function is called ON a fern buffer WHEN initialized"

  " Open node with 'o'
  nmap <buffer> <C-j> <C-w>j
  nmap <buffer> <C-k> <C-w>k
  nmap <buffer> <C-l> <C-w>l
  nmap <buffer> <C-h> <C-w>h
  nmap <buffer> <CR> <Plug>(fern-action-open-or-expand)
  " Add any code to customize fern buffer
endfunction

augroup fern-custom
"  autocmd! *
  autocmd FileType fern call s:init_fern()
augroup END

