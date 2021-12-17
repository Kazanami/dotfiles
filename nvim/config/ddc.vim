call ddc#custom#patch_global('completionMenu', 'pum.vim')
call ddc#custom#patch_global('sources', [
\  'file'
\  ])
call ddc#custom#patch_global('sourceOptions', {
\  'file': {
\    'mark': 'file',
\    'isVolatile': v:true, 
\    'forceCompletionPattern': '\S/\S*'
\  }})
call ddc#enable()

