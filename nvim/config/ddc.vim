call ddc#custom#patch_global('completionMenu', 'pum.vim')
call ddc#custom#patch_global('sources', [
\  'file',
\  'around'
\  ])

call ddc#custom#patch_global('sourceOptions', {
\ '_': {
\   'matchers': ['matcher_head'],
"\   'sorters': ['sorter_rank'],
\   'converters': ['converter_remove_overlap'],
\ },
\ 'around': {'mark': 'Around'},
\  'file': {
\    'mark': 'file',
\    'isVolatile': v:true, 
\    'forceCompletionPattern': '\S/\S*'
\  }})


call ddc#enable()

" <TAB>: completion.
inoremap <TAB> <Cmd>call pum#map#insert_relative(+1)<CR>
" <S-TAB>: completion back.
inoremap <S-TAB> <Cmd>call pum#map#insert_relative(-1)<CR>
" <CR>: confirm
"inoremap <expr><CR> pum#visible() ? "<Plug>(pum#map#confirm())" 
