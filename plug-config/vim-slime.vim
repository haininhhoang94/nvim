" Slime
" https://gist.github.com/Varal7/16a172c359c1da41920024a51ea45ce0

let g:slime_target = "tmux"
" let g:slime_default_config = {"socket_name": "default", "target_pane": ":0.3"}
" let g:slime_default_config = {"socket_name": get(split($TMUX, ","), 0), "target_pane": ":.2"}
let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}
let g:slime_dont_ask_default = 1
let g:slime_python_ipython = 1
let g:slime_preserve_curpos = 0
