if &cp
  se nocp
en

fu! s:packager_init(packager) abort
  cal a:packager.add('kristijanhusak/vim-packager', #{ type: 'opt' })
endf

let s:script_dir = fnamemodify(resolve(expand('<sfile>:p')), ':h')
let s:coconut_root = fnamemodify(s:script_dir, ':h')
let s:data_dir = s:coconut_root . '/data'
let &rtp = s:data_dir . '/vim/cache/rtp'
let &pp = &rtp
pa vim-packager
cal packager#setup(function('s:packager_init'))
let $ZDOTDIR = s:data_dir . '/zsh/files'
let &sh = system('which zsh | xargs printf')
