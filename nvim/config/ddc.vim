call ddc#custom#patch_global('completionMenu', 'pum.vim')
call ddc#custom#patch_global('sources', [
\  'file',
\  'around'
\  ])

call ddc#custom#patch_global('sourceOptions', {
\ '_': {
\   'matchers': ['matcher_head'],
"\   'sorters': ['sorter_rank'],
"\   'converters': ['converter_remove_overlap'],
\ },
\  'file': {
\    'mark': 'file',
\    'isVolatile': v:true, 
\    'forceCompletionPattern': '\S/\S*'
\  }})
call ddc#enable()

