" dein.vim settings{{{
let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:config_home = empty($XDG_CONFIG_HOME) ? expand('~/.config'): $XDG_CONFIG_HOME

let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
let s:toml_path = s:config_home . '/nvim/plugins/'

if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . s:dein_repo_dir
endif

" dein stat check{{
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

"  let s:rc_dir = expand('~/.config/nvim/plugins')
  let s:toml_dir = expand('~/.config/nvim/toml')
  "let s:toml = s:rc_dir . '/dein.toml'
  let s:dein_toml_list = split(glob(s:toml_dir.'/**/*.toml'), '\n')
  for s:i in s:dein_toml_list
    call dein#load_toml(s:i)
  endfor
  call dein#end()
  call dein#save_state()
endif
"}}

" plugin install {{
if dein#check_install()
  call dein#install()
endif
" }}

